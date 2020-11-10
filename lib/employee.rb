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
end
