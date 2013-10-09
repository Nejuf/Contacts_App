class ContactSharesAddUserColumns < ActiveRecord::Migration
  def up
    add_column :contact_shares, :sharing_user_id, :integer
    add_column :contact_shares, :receiving_user_id, :integer
    add_index :contact_shares, :sharing_user_id
    add_index :contact_shares, :receiving_user_id
  end

  def down
    remove_column :contact_shares, :sharing_user_id
    remove_column :contact_shares, :receiving_user_id
  end
end
