class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.string :mentee_full_name
      t.string :mentor_full_name
      t.integer :rating_stars
      t.string :review_body

      t.timestamps
    end
  end
end
