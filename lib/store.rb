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


class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
