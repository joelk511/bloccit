class PostPolicy < ApplicationPolicy

  def index?
	true 
  end

  class Scope
  	attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def policy_scope
    	if user.admin? || user.moderator?
    		scope.all
    	else
    	scope.where(:id => user.id).exists?
    	end
    end
  end


end