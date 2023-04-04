json.extract! review, :id, :description, :user_id, :food_id, :restaurant, :created_at, :updated_at
json.url review_url(review, format: :json)
