class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :product_Id
      t.string :ProductName
      t.string :GroupType
      t.float :Price
      t.string :Description
      t.integer :Quantity
      t.string :ProductDetails
      t.string :image
      t.string :tracklist

      t.timestamps
    end
  end
end
