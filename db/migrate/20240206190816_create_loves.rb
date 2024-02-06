class CreateLoves < ActiveRecord::Migration[7.0]
  def change
    create_table :loves do |t|
      t.integer :user_id
      t.integer :item_id

      t.timestamps
    end
  end
end
