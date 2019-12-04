# frozen_string_literal: true

class RemoveForeignKeyFromCustomerInformation < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :customer_informations, column: :Provinces_id
  end
end
