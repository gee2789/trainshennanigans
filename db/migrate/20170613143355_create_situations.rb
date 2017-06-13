class CreateSituations < ActiveRecord::Migration[5.1]
  def change
    create_table :situations do |t|
      t.references :line_direction
      t.json :raw_data
      t.boolean :resolved, default: false
      t.integer :severity, default: nil
      t.datetime :started_at
      t.datetime :creation_time
      t.string :description
      t.string :reason
      t.boolean :planned, default: false

      t.timestamps
    end
  end
end
