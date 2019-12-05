# frozen_string_literal: true

class RemoveProvinceFromCustomerInformation < ActiveRecord::Migration[6.0]
  def change
    remove_column :customer_informations, :province
  end
end
