class AddAilmentIdToAilments < ActiveRecord::Migration[7.1]
  def change
    add_column :ailments, :ailment_id, :integer
  end
end
