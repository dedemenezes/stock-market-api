require 'pry-byebug'
class StockPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  
  def create?
    bearer_user && !Stock.find_by(name: record.name)
  end

  def update?
    bearer_user
  end

  def bearer_user
    record.bearer.user == user

  end

end
