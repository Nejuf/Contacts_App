class CreateContactGroupJoins < ActiveRecord::Migration
  def change
    create_table :contact_group_joins do |t|
      t.integer :group_id, null: false
      t.integer :contact_id, null: false
      t.timestamps
    end

    add_index :contact_group_joins, :group_id
    add_index :contact_group_joins, :contact_id
  end
end
