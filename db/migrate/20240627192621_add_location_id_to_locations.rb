class AddLocationIdToLocations < ActiveRecord::Migration[7.1]
  def change
    add_column :locations, :location_id, :integer
  end
end
