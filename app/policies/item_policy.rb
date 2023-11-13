class ItemPolicy < ApplicationPolicy

  def new?
    user.admin? if user
  end

  def edit?
    user.admin? if user
  end

  def destroy?
    user.admin? if user
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
