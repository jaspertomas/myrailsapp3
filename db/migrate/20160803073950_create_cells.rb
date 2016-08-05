class CreateCells < ActiveRecord::Migration
  def change
    create_table :cells do |t|
      t.integer :x
      t.integer :y
      t.string :value

      t.timestamps null: false
    end
  end
end
