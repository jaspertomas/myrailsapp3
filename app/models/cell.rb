class Cell < ActiveRecord::Base
  belongs_to :cell_type

  def Cell.fetchAllAsNestedArray
    cells = []
    Cell.all.each do |c|
      cells[c.x]||=[]
      cells[c.x][c.y]=c
    end
    return cells
  end
end
