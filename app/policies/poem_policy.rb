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
  	true
    # record.user == user
  end

  def destroy?
  	record.user == user # Only poem creator can delete it
  end

end

