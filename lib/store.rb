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

  def must_sell_apparel
    if !(mens_apparel || womens_apparel) 
      errors.add(:id, "Must sell at least one kind of apparel")
    end
  end

  validate :must_sell_apparel
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  before_destroy :check_before_destroy

  def check_before_destroy
    employees_count = Employee.where(store_id: self.id).count
    puts "Employee count is #{employees_count}"
    if employees_count > 0
      errors.add(:id, "Cannot delete this store as it still has #{employees_count} employees on the roll.")
      raise ActiveRecord::Rollback
    end
  end
end
