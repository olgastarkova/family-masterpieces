class PoemPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
  	true  # Anyone can view a poem
  end

  def create?
    true # Anyone can create a restaurant --> NEED TO CHANGE TO AUTHOR=TRUE
  end

  def update?
  	is_user_owner_or_admin?
  end

  def destroy?
  	is_user_owner_or_admin?
  end


  private

  def is_user_owner_or_admin?
    record.user == user || user.admin?
  end
end
