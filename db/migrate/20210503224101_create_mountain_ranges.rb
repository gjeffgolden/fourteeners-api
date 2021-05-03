class CreateMountainRanges < ActiveRecord::Migration[6.1]
  def change
    create_table :mountain_ranges do |t|
      t.string :name

      t.timestamps
    end
  end
end
