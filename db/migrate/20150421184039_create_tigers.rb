class CreateTigers < ActiveRecord::Migration
  def change
    create_table :tigers do |t|
      t.integer :appetite

      t.timestamps null: false
    end
  end
end
