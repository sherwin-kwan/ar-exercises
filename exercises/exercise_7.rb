require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"
require_relative "./exercise_5"
require_relative "./exercise_6"

puts "Exercise 7"
puts "----------"
puts "Skipped for now"

# Your code goes here ...

# Should be an error

# puts "Enter store name please: "
# print "> "
# @new_store = $stdin.gets.strip
# create_store = Store.create({ name: @new_store })
# create_store.errors.full_messages.each do |error|
#   puts "Error: #{error}"
# end

# @test_1 = Store.new({
#   name: "Burnaby",
#   annual_revenue: -111,
#   mens_apparel: true,
#   womens_apparel: true,
# })
# @test_2 = Store.new({
#   name: "Burnaby",
#   annual_revenue: 3.14159,
#   mens_apparel: true,
#   womens_apparel: true,
# })

# begin 
#   @test_1.save!
#   @test_2.save! 
# rescue => exception
#   p @test_1.errors.full_messages # Or do this:
#   puts "Error: #{exception.message}"
# end
