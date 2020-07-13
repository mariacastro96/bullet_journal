class Journal < ApplicationRecord

  # Includes

  # Attributes

  # Associations
  belongs_to :user
  # Delegates

  # Constants

  # Validations

  # Scopes
  scope :current_user_journals, -> (user) {
    where(user: user)
  }

  # Callbacks

  # Constants Methods

  # Default

  private
end
