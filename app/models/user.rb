class User < ApplicationRecord
  # encrypt password
  has_secure_password validations: false 

  # model associations
  has_many :lists, dependent: :destroy

  # validations
  validates :name, length: { minimum: 1, maximum: 50 }, presence: true
  validates :username, presence: true
  validates :password, presence: true, length: { minimum: 6 }, if: -> { password_digest? }
  validates :email, presence: true, uniqueness: { case_sensitive: true }, length: { minimum: 3, maximum: 254 }
end