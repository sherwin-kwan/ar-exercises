# Column    |            Type             |                       Modifiers                        
# -------------+-----------------------------+--------------------------------------------------------
#  id          | integer                     | not null default nextval('employees_id_seq'::regclass)
#  store_id    | integer                     | 
#  first_name  | character varying           | 
#  last_name   | character varying           | 
#  hourly_rate | integer                     | 
#  created_at  | timestamp without time zone | not null
#  updated_at  | timestamp without time zone | not null
# Indexes:


class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store_id, presence: true
  validates :hourly_rate, numericality: {only_integer: true, greater_than: 40, less_than: 200}
end
