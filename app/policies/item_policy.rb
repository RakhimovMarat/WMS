class ItemPolicy < ApplicationPolicy

  def new?
    user.present? if user
  end

  def edit?
    user.present? if user
  end

  def destroy?
    user.present? if user
  end

  def transactions?
    user.present? if user
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
