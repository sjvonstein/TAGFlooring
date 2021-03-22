class CreateUnits < ActiveRecord::Migration[6.1]
  def change
    create_table :units do |t|
      t.string :unit
      t.integer :floorplan_id

      t.timestamps
    end
  end
end
