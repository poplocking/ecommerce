# frozen_string_literal: true

class ChangeForeignKeyNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :category, :name, false
  end
end
