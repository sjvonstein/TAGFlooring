class CreateInstallers < ActiveRecord::Migration[6.1]
  def change
    create_table :installers do |t|
      t.string :name

      t.timestamps
    end
  end
end