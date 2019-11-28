class CreateOrderHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :order_histories do |t|
      t.integer :order_id
      t.string :payment_method
      t.string :address
      t.float :subtotal
      t.float :shipping_total
      t.float :total
      t.integer :quantity
      t.float :price
      t.float :product_total_price
      t.string :carrier_string
      t.references :customer_information, null: false, foreign_key: true

      t.timestamps
    end
  end
end
