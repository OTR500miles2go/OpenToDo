class List < ApplicationRecord
  # model association
  belongs_to :user
  has_many :items, dependent: :destroy
  
  # validations
  validates :title, presence: true, length: { minimum: 5 }
  validates :created_by, presence: true
end