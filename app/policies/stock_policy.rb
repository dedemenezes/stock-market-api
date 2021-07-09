require 'pry-byebug'
class StockPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def bearer_user?
    binding.pry
    record.bearer.user == user
  end

  def show?
    true
  end

  def create?
    bearer_user? && !name_exist?
  end

  def update?
    bearer_user?
  end

  def destroy?
    bearer_user?
  end

  def name_exist?
    Stock.find_by(name: record.name)
  end
end
