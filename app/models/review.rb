class Review < ApplicationRecord
  belongs_to :user
  belongs_to :food
  belongs_to :restaurant

  validates :description, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "user_id", "food_id", "restaurant_id" "updated_at"]
  end
end
