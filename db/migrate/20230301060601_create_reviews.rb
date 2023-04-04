class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :description
      t.references :user, foreign_key: true
      t.references :food, foreign_key: true
      t.references :restaurant

      t.timestamps
    end
  end
end
