# frozen_string_literal: true

class DropCustomerInformationTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :customer_informations
  end
end
