require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Abe", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Betty", last_name: "Max", hourly_rate: 70)
@store1.employees.create(first_name: "Charlie", last_name: "London", hourly_rate: 80)
@store1.employees.create(first_name: "Debbie", last_name: "Paris", hourly_rate: 90)
@store1.employees.create(first_name: "Earl", last_name: "Rome", hourly_rate: 100)
@store2.employees.create(first_name: "Federica", last_name: "Virani", hourly_rate: 110)
@store2.employees.create(first_name: "George", last_name: "Max", hourly_rate: 120)
@store2.employees.create(first_name: "Hillary", last_name: "London", hourly_rate: 130)
@store2.employees.create(first_name: "Ian", last_name: "Paris", hourly_rate: 140)
@store2.employees.create(first_name: "Jill", last_name: "Rome", hourly_rate: 150)