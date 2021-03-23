class AddFloorsColumntoFloorplans < ActiveRecord::Migration[6.1]
  def change
    add_column :floorplans, :floors, :integer, limit: 1, null: false, default: 1
  end
end
