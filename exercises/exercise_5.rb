require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
puts "Total revenue is: #{total_revenue}"

puts "Average revenue is: #{total_revenue/Store.count}"

# Find number of well-performing stores
star_performers = Store.where("annual_revenue > 1000000")
puts "There are #{star_performers.count} stores performing well with revenue over $1 million"