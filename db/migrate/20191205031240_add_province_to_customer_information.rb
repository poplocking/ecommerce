# frozen_string_literal: true

class AddProvinceToCustomerInformation < ActiveRecord::Migration[6.0]
  def change
    add_reference :customer_informations, :provinces, null: true, foreign_key: true
  end
end
