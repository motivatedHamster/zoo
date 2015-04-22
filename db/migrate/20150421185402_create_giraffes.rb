class CreateGiraffes < ActiveRecord::Migration
  def change
    create_table :giraffes do |t|
      t.integer :height

      t.timestamps null: false
    end
  end
end
