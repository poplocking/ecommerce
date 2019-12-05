# frozen_string_literal: true

class RemoveProvinceIdFromCustomerInformation < ActiveRecord::Migration[6.0]
  def change
    remove_column :customer_informations, :provinces_id
  end
end
