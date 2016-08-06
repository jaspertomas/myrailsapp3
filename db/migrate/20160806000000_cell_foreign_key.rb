class CellForeignKey < ActiveRecord::Migration
  def change
#    add_foreign_key :businesses, :users
  add_reference :cells, :cell_type, index: true, foreign_key: true
    end
end
