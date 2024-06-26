class CreateMonstersAilments < ActiveRecord::Migration[7.1]
  def change
    create_table :monsters_ailments do |t|
      t.references :monster, null: false, foreign_key: true
      t.references :ailment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
