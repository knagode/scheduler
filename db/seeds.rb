# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

teacher = Teacher.create!(email: 'teacher.first@test.com')
Teacher.create!(email: 'teacher.second@test.com')
Teacher.create!(email: 'teacher.third@test.com')

Student.create!(email: 'student.first@test.com')
Student.create!(email: 'student.second@test.com')
Student.create!(email: 'student.third@test.com')


Slot.create!(teacher: teacher, start_at: 4.hours.ago.at_beginning_of_hour(), stop_at: Time.now.at_beginning_of_hour())

Slot.create!(teacher: teacher, start_at: 1.day.from_now.at_beginning_of_hour(), stop_at: 1.day.from_now.at_beginning_of_hour() + 1.hour)

