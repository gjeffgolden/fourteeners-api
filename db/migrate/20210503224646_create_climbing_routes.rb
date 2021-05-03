class CreateClimbingRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :climbing_routes do |t|
      t.references :mountain, null: false, foreign_key: true
      t.string :name
      t.float :mileage
      t.integer :elevation_gain
      t.integer :class_rating
      t.string :exposure

      t.timestamps
    end
  end
end
