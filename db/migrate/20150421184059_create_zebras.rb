class CreateZebras < ActiveRecord::Migration
  def change
    create_table :zebras do |t|
      t.integer :weight

      t.timestamps null: false
    end
  end
end
