# frozen_string_literal: true

class DeleteProvinceIdFromCustomerInformation < ActiveRecord::Migration[6.0]
  def change
    remove_column :customer_informations, :Provinces_id
  end
end
