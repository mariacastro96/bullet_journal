class JournalPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def show?
    #record.user = the user that belongs to the record
    record.user == user || user.admin?
  end
end
