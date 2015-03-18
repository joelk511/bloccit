class PostPolicy < ApplicationPolicy
    attr_reader :user, :record

    def initialize(user, record)
      @user = user
      @record = record
    end

  def show?
    scope.where(:id => record.id).exists?
  end

  def create?

  end

  class Scope 
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope 
    end
    
    def resolve
      if user.admin? || user.moderator?
        scope.all
      else
        # user.present? && record.user == user 
        scope.where(user_id: user.id)
      end
    end
  end
end