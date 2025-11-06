class Car < ApplicationRecord
  belongs_to :user  # the admin who listed the car

  has_many_attached :photos # For multiple car images
  validates :name, :make, :model_year, :color, :milage, :price, :description, :status, presence: true
end
