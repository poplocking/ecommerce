# frozen_string_literal: true

class RemoveColumnFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :GroupType
  end
end
