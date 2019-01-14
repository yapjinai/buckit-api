# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Item.destroy_all
Todo.destroy_all

##################
u1 = User.create(
  username: 'yapjinai',
  display_name: 'Jin Ai',
  password: 'peeby',
  email: 'jinai.jyap@gmail.com'
  )
u2 = User.create(
  username: 'yapinhae',
  display_name: 'In Hae',
  password: 'peeby',
  email: 'conkaholic@gmail.com'
  )
##################
i1 = Item.create(
  description: 'climb a mountain'
)
i2 = Item.create(
  description: 'live in Europe'
)
i3 = Item.create(
  description: 'see the Northern Lights'
)
##################
Todo.create([
  {user: u1, item: i1},
  {user: u1, item: i2},
  {user: u1, item: i3},
  {user: u2, item: i1},
  {user: u2, item: i3},
  ])
