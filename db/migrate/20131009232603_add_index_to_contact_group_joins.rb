class AddIndexToContactGroupJoins < ActiveRecord::Migration
  def change
    add_index :contact_group_joins, [:group_id, :contact_id], unique: true
  end
end
