class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.string :size
      t.string :image
      t.string :condition
      t.string :retail_price
      t.string :selling_price

      t.timestamps
    end
  end
end
