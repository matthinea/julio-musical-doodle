# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do 
  employee = Employee.create({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email
    })
  team = employee.teams.create({
    name: Faker::Team.name
    })
  progress_report = employee.progress_reports.create({
    body: Faker::Lorem.paragraphs(2)
    })
  
end