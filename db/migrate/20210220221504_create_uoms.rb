class CreateUoms < ActiveRecord::Migration[6.1]
  def change
    create_table :uoms do |t|
      t.string :name

      t.timestamps
    end
  end
end
