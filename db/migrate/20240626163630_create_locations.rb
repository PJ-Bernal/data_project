class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.integer :zoneCount
      t.string :name

      t.timestamps
    end
  end
end
