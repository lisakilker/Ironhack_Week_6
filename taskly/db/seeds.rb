# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create([
{name: "Andrew Wiggin", email:"andrew@gmail.com"},
{name: "Julian Smith", email: "julian@gmail.com"}
	])

tasks = Task.create([
{name: "User 1 Task1", due_date: DateTime.now, user_id: User.first.id},
{name: "User 1 Task2", due_date: DateTime.now, user_id: User.first.id},
{name: "User 2 Task1", due_date: DateTime.now, user_id: User.second.id}
	])
