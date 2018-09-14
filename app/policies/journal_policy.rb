class JournalPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    user.admin?
  end

  def show?
    #record.user = the user that belongs to the record
    record.user == user || user.admin?
  end

  def create?
    #record.user = the user that belongs to the record
    user.admin?
  end

  def update?
    #record.user = the user that belongs to the record
    user.admin?
  end

  def destroy?
    #record.user = the user that belongs to the record
    user.admin?
  end
end
