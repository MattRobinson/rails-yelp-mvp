class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, :phone_number, presence: true
  validates :category, exclusion: { in: %w(neptunian),
    message: "%{value} is not a valid category." }
end
