# frozen_string_literal: true

class ChangePhoneColumnToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :customer_informations, :phone, :integer
  end
end
