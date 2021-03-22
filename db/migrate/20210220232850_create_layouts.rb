class CreateLayouts < ActiveRecord::Migration[6.1]
  def change
    create_table :layouts do |t|
      t.integer :floorplan_id
      t.integer :room_name_id
      t.integer :product_id
      t.decimal :quantity
      t.string :note

      t.timestamps
    end
  end
end
