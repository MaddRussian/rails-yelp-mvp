class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  CATEGORIES = ["Chinese", "Italian", "Japanese", "French", "Belgian"]
  validates :category, inclusion: { in: CATEGORIES }
end
