class CreateGroupTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :group_types do |t|
      t.string :GroupType

      t.timestamps
    end
  end
end
