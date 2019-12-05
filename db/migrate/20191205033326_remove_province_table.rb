# frozen_string_literal: true

class RemoveProvinceTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :provinces
  end
end
