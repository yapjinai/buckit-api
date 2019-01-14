class Item < ApplicationRecord
  validates :description, presence: true, uniqueness: true

  has_many :todos
  has_many :users, through: :todos
end
