class CreateLineDirections < ActiveRecord::Migration[5.1]
  def change
    create_table :line_directions do |t|
      t.references :line
      t.integer :direction
      t.string :name
      t.timestamps
    end
  end
end
