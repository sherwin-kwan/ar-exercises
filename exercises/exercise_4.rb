require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
@mens_stores = Store.where(mens_apparel: true)
puts "Men's Stores"
@mens_stores.each do |store|
  puts("Name: #{store.name}, Annual Revenue: #{store.annual_revenue}")
end

puts "Women's Stores"
Store.where("womens_apparel = true AND annual_revenue < 1000000").each do |store|
  puts("Name: #{store.name}, Annual Revenue: #{store.annual_revenue}") 
end