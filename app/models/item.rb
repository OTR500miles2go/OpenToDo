class Item < ApplicationRecord
  # model association
  belongs_to :list

  # validations
  validates :name, presence: true
end