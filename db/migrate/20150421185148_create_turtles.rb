class CreateTurtles < ActiveRecord::Migration
  def change
    create_table :turtles do |t|
      t.boolean :is_inside

      t.timestamps null: false
    end
  end
end
