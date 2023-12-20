class StockPolicy < ApplicationPolicy
  def new?
    user.admin? || user.present? if user
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
