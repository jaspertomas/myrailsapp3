# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Todo.create!(title: 'grocery shopping', notes: 'pickles, eggs, red onion')
CellType.create!(name: 'Plain', description: 'Ordinary floor tile. Sometimes has a chip on it, or a block of dirt, a key, a monster, or some other object.', values: ',Chip,Key,Block,Monster,FireBoots,Flippers')
CellType.create!(name: 'Door', description: 'Prevents access to portal until all chips have been collected', values: 'Open,Closed')
CellType.create!(name: 'Portal', description: 'The goal in each puzzle is to reach the portal', values: ',Success')
CellType.create!(name: 'Wall', description: 'Can\'t go through a wall', values: '')

Cell.create!(x:0,y:0,cell_type_id:4)
Cell.create!(x:0,y:1,cell_type_id:4)
Cell.create!(x:0,y:2,cell_type_id:4)
Cell.create!(x:0,y:3,cell_type_id:4)
Cell.create!(x:0,y:4,cell_type_id:4)

Cell.create!(x:1,y:0,cell_type_id:4)
Cell.create!(x:1,y:1,cell_type_id:1,value:"")
Cell.create!(x:1,y:2,cell_type_id:1,value:"")
Cell.create!(x:1,y:3,cell_type_id:1,value:"")
Cell.create!(x:1,y:4,cell_type_id:4)

Cell.create!(x:2,y:0,cell_type_id:4)
Cell.create!(x:2,y:1,cell_type_id:1,value:"")
Cell.create!(x:2,y:2,cell_type_id:1,value:"")
Cell.create!(x:2,y:3,cell_type_id:1,value:"")
Cell.create!(x:2,y:4,cell_type_id:4)


Cell.create!(x:3,y:0,cell_type_id:4)
Cell.create!(x:3,y:1,cell_type_id:1,value:"")
Cell.create!(x:3,y:2,cell_type_id:1,value:"")
Cell.create!(x:3,y:3,cell_type_id:3,value:"")
Cell.create!(x:3,y:4,cell_type_id:4)


Cell.create!(x:4,y:0,cell_type_id:4)
Cell.create!(x:4,y:1,cell_type_id:4)
Cell.create!(x:4,y:2,cell_type_id:4)
Cell.create!(x:4,y:3,cell_type_id:4)
Cell.create!(x:4,y:4,cell_type_id:4)

Setting.create!(name:"Chips",value:"0")
Setting.create!(name:"ChipsNeeded",value:"0")
Setting.create!(name:"X",value:"1")
Setting.create!(name:"Y",value:"1")
Setting.create!(name:"Command",value:"")

