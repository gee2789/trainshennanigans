class CreateLineGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :line_groups do |t|
      t.string :color
      t.timestamps
    end
  end
end
