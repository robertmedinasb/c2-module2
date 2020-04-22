# frozen_string_literal: true

require 'csv'
Student = Struct.new(:name, :email)

# Generates a CSV string from the students.
def generate_csv(students)
  string = CSV.generate do |csv|
    students.each do |student|
      csv << [student[:name], student[:email]]
    end
  end
  string
end

students = [
  Student.new('Julio', 'jnavarro@able.co'),
  Student.new('ximena', 'ximena@able.co'),
  Student.new('diego', 'diego@able.co'),
  Student.new('jordi', 'jordi@able.co'),
  Student.new('andres', 'andres@able.co')
]

puts generate_csv(students)
# Outputs:
# name,email
# julio,jnavarro@able.co
# ximena,ximena@able.co
# diego,diego@able.co
# jordi,jordi@able.co
# andres,andres@able.co
