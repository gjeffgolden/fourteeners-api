class CreateMountains < ActiveRecord::Migration[6.1]
  def change
    create_table :mountains do |t|
      t.string :name
      t.integer :elevation
      t.references :mountain_range, null: false, foreign_key: true
      t.float :latitude
      t.float :longitude
      t.integer :rank
      t.integer :class_rating
      t.string :image_url

      t.timestamps
    end
  end
end
