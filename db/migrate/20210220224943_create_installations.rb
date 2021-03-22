class CreateInstallations < ActiveRecord::Migration[6.1]
  def change
    create_table :installations do |t|
      t.integer :unit_id
      t.integer :room_name_id
      t.integer :product_id
      t.integer :installer_id
      t.date :install_date

      t.timestamps
    end
  end
end
