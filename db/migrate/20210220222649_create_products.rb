class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.integer :product_type_id
      t.integer :manufacturer_id
      t.string :collection
      t.string :color
      t.integer :uom_id
      t.boolean :discontinued

      t.timestamps
    end
  end
end
