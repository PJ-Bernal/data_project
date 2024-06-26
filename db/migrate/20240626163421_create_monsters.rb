class CreateMonsters < ActiveRecord::Migration[7.1]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :size
      t.string :species
      t.text :description

      t.timestamps
    end
  end
end
