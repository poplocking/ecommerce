# frozen_string_literal: true

class DeleteImageFromTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :image
  end
end
