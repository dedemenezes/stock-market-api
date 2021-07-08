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
    
    record.bearer.user == user && !Stock.find_by(name: record.name)
  end
end
