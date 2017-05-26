# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@user = User.new
@user.name = "Taro"
@user.smoid = "obj123"
@user.save

@item = Item.new
@item.name = "りんご"
@item.price = 100
@item.about = "青森県産"
@item.image = ""
@item.active = true
@item.save

@item = Item.new
@item.name = "みかん"
@item.price = 200
@item.about = "愛媛県産"
@item.image = ""
@item.active = true
@item.save