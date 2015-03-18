class PostPolicy < ApplicationPolicy

  class Scope
  	attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def index?
      if user.admin? || user.moderator?
        scope.all
      else
        scope.where(:id => user.id)
      end
    end

    def show?
      index?
    end

    def destroy?
      user.present? && (record.user == user || user.admin? || user.moderator?)
    end



    # def resolve
    # 	if user.admin? || user.moderator?
    # 		scope.all
    # 	else
    # 	scope.where(:id => user.id).exists?
    # 	end
    # end
  end


end