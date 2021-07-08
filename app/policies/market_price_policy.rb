class MarketPricePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    MarketPrice.find_by(value_cents: record.value_cents) ? false : true
  end
end
