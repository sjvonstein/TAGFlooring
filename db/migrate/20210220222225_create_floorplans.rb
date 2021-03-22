class CreateFloorplans < ActiveRecord::Migration[6.1]
  def change
    create_table :floorplans do |t|
      t.string :name
      t.string :code
      t.integer :community_id

      t.timestamps
    end
  end
end
