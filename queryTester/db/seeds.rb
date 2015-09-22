# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create([
{name: "John Smith", email: "John@gmail.com", active: true},
{name: "Maggie Taylor", email: "Maggie@gmail.com", active: true},
{name: "Becky Connor", email: "Becky@gmail.com", active: true},
	])

tasks = Task.create([
{name: "User 1 Task 1", status: "pending", user_id: users[0].id},
{name: "User 1 Task 2", status: "pending", user_id: users[0].id},
{name: "User 2 Task 1", status: "pending", user_id: users[1].id},
{name: "User 2 Task 2", status: "done", user_id: users[1].id},
{name: "User 3 Task 2", status: "pending", user_id: users[2].id},
{name: "User 3 Task 3", status: "done", user_id: users[2].id},
{name: "User 3 Task 3", status: "in the works", user_id: users[2].id},
	])
