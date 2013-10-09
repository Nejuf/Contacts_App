class DeleteContactSharesUserId < ActiveRecord::Migration
  def up
    remove_column :contact_shares, :user_id
  end

  def down
    add_column :contact_shares, :user_id
  end
end
