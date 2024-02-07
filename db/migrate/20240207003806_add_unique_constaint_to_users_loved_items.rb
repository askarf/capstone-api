class AddUniqueConstaintToUsersLovedItems < ActiveRecord::Migration[7.0]
  def change
    add_index :users_loved_items, [:user_id, :item_id], unique: true
  end
end
