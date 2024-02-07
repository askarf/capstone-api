class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_table :loves, :users_loved_items
  end
end
