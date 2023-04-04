# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


	10.times do
		user = User.create!(
			first_name: Faker::Name.first_name,
			last_name: Faker::Name.last_name,
			email: Faker::Internet.email,
			mobile_number: Faker::Base.numerify('+91 ### ### ####'),
			address: Faker::Address.full_address )

		10.times do
			restaurant= Restaurant.create!(
									name: Faker::Restaurant.name,
									address: Faker::Address.full_address
			)
			5.times do
				food = Food.create!(
					name: Faker::Food.dish,
					price: Faker::Commerce.price,
					restaurant_id: restaurant.id)

				2.times do
					review= Review.create!(
						description: Faker::Restaurant.review,
						user_id: user.id,
						food_id: food.id,
						restaurant_id: restaurant.id
						)
				end
			end
		end
	end

