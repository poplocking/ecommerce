class CreateShippingInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :shipping_informations do |t|
      t.integer :shipping_id
      t.string :postal_code
      t.string :city
      t.string :address
      t.reference :province
      t.reference :customer_information

      t.timestamps
    end
  end
end
