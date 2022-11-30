class CreateOrderLists < ActiveRecord::Migration[6.1]
  def change
    create_table :order_lists do |t|
      t.string :name
      t.integer :price
      t.references :orders, foreign_key: true
      t.references :products, foreign_key: true
      t.integer :qty

      t.timestamps
    end
  end
end
