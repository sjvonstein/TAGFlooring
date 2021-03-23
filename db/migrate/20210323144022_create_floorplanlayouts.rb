class CreateFloorplanlayouts < ActiveRecord::Migration[6.1]
  def change
    create_table :floorplanlayouts do |t|
      t.references :floorplan, null: false, foreign_key: true
      t.references :room_name, null: false, foreign_key: true

      t.timestamps
    end
  end
end
