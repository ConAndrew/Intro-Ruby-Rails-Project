class Food < ApplicationRecord
  belongs_to :restaurant
  has_many :reviews

  validates :name, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "name", "id", "price", "restaurant_id" "updated_at"]
  end
end
