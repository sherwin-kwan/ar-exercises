require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"
require_relative "./exercise_5"
require_relative "./exercise_6"
require_relative "./exercise_7"

@store1.employees.create(first_name: "Andy", last_name: "Lindsay", hourly_rate: 80)

find_Andy = Employee.find_by(first_name: 'Andy')
p find_Andy

find_Khurram = Employee.find_by(first_name: 'Khurram')
find_Khurram.first_name = "KHURRAM"
find_Khurram.save
p find_Khurram