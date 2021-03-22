class DropProdoctTypeTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :product_types
  end
end
