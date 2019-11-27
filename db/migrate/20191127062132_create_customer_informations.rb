class CreateCustomerInformations < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_informations do |t|
      t.integer :customer_id
      t.string :firstName
      t.string :lastName
      t.string :password
      t.string :address
      t.string :email
      t.string :city
      t.string :province
      t.string :postalCode
      t.integer :phone
      t.references :Provinces, null: false, foreign_key: true

      t.timestamps
    end
  end
end
