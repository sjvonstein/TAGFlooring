class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.decimal :lifeExpectancy
      t.integer :parent_id

      t.timestamps
    end
  end
end
