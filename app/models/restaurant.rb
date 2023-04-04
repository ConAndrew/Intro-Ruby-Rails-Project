class Restaurant < ApplicationRecord
	has_many :foods, dependent: :destroy
	has_many :reviews, dependent: :destroy

	validates :name, presence: true
	validates :address, presence: true

	def self.ransackable_attributes(auth_object = nil)
    ["id", "name", "address", "created_at", "updated_at"]
  end
end
