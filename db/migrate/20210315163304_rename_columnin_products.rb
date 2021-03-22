class RenameColumninProducts < ActiveRecord::Migration[6.1]
  def change
    change_table :products do |t|
      t.rename :product_type_id, :category_id
    end
  end
end
