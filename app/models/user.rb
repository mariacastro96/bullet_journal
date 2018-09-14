class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Includes

  # Attributes

  # Associations
  has_many :journals
  # Delegates

  # Constants

  # Validations

  # Scopes

  # Callbacks

  # Constants Methods

  # Default

  private
end
