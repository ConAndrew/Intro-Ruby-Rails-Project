class User < ApplicationRecord
	has_many :reviews, dependent: :destroy

	validates :first_name, :last_name, presence:true
	validates :email, presence: true, uniqueness: true

	def full_name
		"#{first_name} #{last_name}"
	end

	def self.ransackable_attributes(auth_object = nil)
		["created_at", "email", "id", "mobile_number", "first_name", "last_name", "address" "updated_at"]
	end
end
