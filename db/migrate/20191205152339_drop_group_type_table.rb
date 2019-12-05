# frozen_string_literal: true

class DropGroupTypeTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :group_types
  end
end
