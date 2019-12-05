# frozen_string_literal: true

class AddProvinceToCustomerInformation < ActiveRecord::Migration[6.0]
  def change
    add_reference :customer_informations, :province
  end
end
