class CreateCellTypes < ActiveRecord::Migration
  def change
    create_table :cell_types do |t|
      t.string :name
      t.string :description
      t.string :values

      t.timestamps null: false
    end
  end
end
