class AddMonsterIdToMonsters < ActiveRecord::Migration[7.1]
  def change
    add_column :monsters, :monster_id, :integer
  end
end
