require_relative 'person'
require_relative 'student'
require_relative 'teacher'

# student = Student.new('Math', name: 'Alice', age: 16)
# teacher = Teacher.new('Math', name: 'Mr. Smith', age: 35)

# puts "Student: #{student.name}, Classroom: #{student.classroom}"
# puts "Age: #{student.age}, Can use services? #{student.can_use_services?}"
# puts ''
# puts "Teacher: #{teacher.name}, Specialization: #{teacher.specialization}"
# puts "Age: #{teacher.age}, Can use services? #{teacher.can_use_services?}"

# Creating instances of 2 students
# Name, Age, Parent permission, Classroom
student1 = Student.new('Math', name: 'Margareth', age: 20, parent_permission: false)
student2 = Student.new('English', name: 'James', age: 19, parent_permission: true)

# Creating instances of 2 teachers
# Name, Age, Parent permission, specialization
teacher1 = Teacher.new('Mathematics', name: 'Mr. Johnson', age: 45, parent_permission: true)
teacher2 = Teacher.new('Literature', name: 'Ms. Harrison', age: 38, parent_permission: true)

# Output information about Students 1 and 2
puts "Id: #{student1.id} | Student 1: #{student1.name} | Age: #{student1.age}"
puts "Parent permission: #{student1.parent_permission}"
puts "Hooky: #{student1.play_hooky} Can use services? #{student1.can_use_services?}"
puts ''
puts "Id: #{student2.id} | Student 2: #{student2.name} | Age: #{student2.age}"
puts "Parent permission: #{student2.parent_permission}"
puts "Can use services? #{student2.can_use_services?}"
puts ''

# Output information about Teachers 1 and 2
puts "Id: #{teacher1.id} | Teacher 1: #{teacher1.name} | Age: #{teacher1.age}"
puts "Specialization: #{teacher1.specialization}"
puts ''
puts "Id: #{teacher2.id} | Teacher 2: #{teacher2.name} | Age: #{teacher2.age}"
puts "Specialization: #{teacher2.specialization}"
puts ''

puts 'Thank you very much for using the School Library App!'
