require_relative "../setup"

puts "Exercise 1"
puts "----------"

# SCHEMA FOR STORE
# Column     |            Type             |                      Modifiers
# ----------------+-----------------------------+-----------------------------------------------------
#  id             | integer                     | not null default nextval('stores_id_seq'::regclass)
#  name           | character varying           |
#  annual_revenue | integer                     |
#  mens_apparel   | boolean                     |
#  womens_apparel | boolean                     |
#  created_at     | timestamp without time zone | not null
#  updated_at     | timestamp without time zone | not null

# Your code goes below here ...

arr = [{
  name: 'Burnaby',
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true
}, {
  name: 'Richmond',
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true
}, {
  name: 'Gastown',
  annual_revenue: 190000,
  mens_apparel: true,
  womens_apparel: false
}]

Store.create(arr)

puts "There are #{Store.count} stores in the database"