class CellType < ActiveRecord::Base
  has_many :cells, :dependent => :destroy
end
