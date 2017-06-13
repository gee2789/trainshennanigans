class CreateLines < ActiveRecord::Migration[5.1]
  def change
    create_table :lines do |t|
      t.string :name
      t.references :line_group
      t.timestamps
    end
  end
end
