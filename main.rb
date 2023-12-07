require_relative 'person'
require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'classroom'
require_relative 'rental'
require_relative 'capitalizedecorator'
require_relative 'trimmerdecorator'

# DATA FROM PROJECT 3 - SET UP ASSOCIATIONS

# ----- STUDENT AND CLASSROOM -----
classroom1 = Classroom.new('Chemistry')
student3 = Student.new('Chemistry', name: 'John Paul', age: 23, parent_permission: true)
student4 = Student.new('Chemistry', name: 'Lisa Marie', age: 24, parent_permission: true)
classroom1.add_student(student3)
classroom1.add_student(student4)

puts ''
puts '=============================================='
puts '      SCHOOL      LIBRARY       APP'
puts '=============================================='
puts ''
puts 'DATA FROM PROJECT 3 - SET UP ASSOCIATIONS'
puts '-----------------------------------------'
puts ''
puts "Classroom 1: #{classroom1.label} is a new classroom."
puts ''
puts "Id: #{student3.id} | Student 3: #{student3.name} | Age: #{student3.age}"
puts "Classroom: #{student3.classroom.label}"
puts "Parent permission: #{student3.parent_permission}"
puts ''
puts "Id: #{student4.id} | Student 4: #{student4.name} | Age: #{student4.age}"
puts "Classroom: #{student4.classroom.label}"
puts "Parent permission: #{student4.parent_permission}"
puts ''
puts 'List of students in Classroom 1 - Chemistry:'
p " #{classroom1.students}"
puts ''

# ----- BOOK, PERSON AND RENTAL -----

book1 = Book.new(title: 'Thinking in Systems A Primer', author: 'Donella H Meadows')
book2 = Book.new(rentals: [], title: 'Clean Code Javascript', author: 'Ryan McDermott')
person1 = Person.new(name: 'John Francis', age: 30)
person2 = Person.new(name: 'Ann Jane', age: 21)
rental1 = Rental.new(book1, person1, date: '2023-11-20')
rental2 = Rental.new(book1, person2, date: '2021-02-05')
rental3 = Rental.new(book2, person2, date: '2022-03-10')

puts ''
puts "Book 1 - Title: \"#{book1.title}\" | Author: #{book1.author}"
puts ''
puts "Book 2 - Title: \"#{book2.title}\" | Author: #{book2.author}"
puts ''
puts "Person1 - Name: #{person1.name} | Age: #{person1.age}"
puts ''
puts "Person2 - Name: #{person2.name} | Age: #{person2.age}"
puts ''
puts 'RENTAL 1'
puts "Book: \"#{rental1.book.title}\" | Person: #{rental1.person.name} | Date: #{rental1.date}"
puts ''
puts 'RENTAL 2'
puts "Book: \"#{rental2.book.title}\" | Person: #{rental2.person.name} | Date: #{rental2.date}"
puts ''
puts 'RENTAL 3'
puts "Book: \"#{rental3.book.title}\" | Person: #{rental3.person.name} | Date: #{rental3.date}"
puts ''

# DATA FROM PROJECT 2 - DECORATE A CLASS

person = Person.new(name: 'maximilianus', age: 22, parent_permission: true)
person.correct_name

puts '=============================================='
puts ''
puts 'DATA FROM PROJECT 2 - DECORATE A CLASS'
puts '--------------------------------------'
puts ''

capitalized_person = CapitalizeDecorator.new(person)
puts "Capitalized_person: #{capitalized_person.correct_name}"
puts ''

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts "Capitalized_trimmed_person: #{capitalized_trimmed_person.correct_name}"
puts ''

# DATA FROM PROJECT 1 - ADD PERSON, STUDENT & TEACHER CLASSES

# Creating instances of 2 students
# Name, Age, Parent permission, Classroom
student1 = Student.new('Math', name: 'Margareth', age: 20, parent_permission: false)
student2 = Student.new('English', name: 'James', age: 19, parent_permission: true)

# Creating instances of 2 teachers
# Name, Age, Parent permission, specialization
teacher1 = Teacher.new('Mathematics', name: 'Mr. Johnson', age: 45, parent_permission: true)
teacher2 = Teacher.new('Literature', name: 'Ms. Harrison', age: 38, parent_permission: true)

# Output information about Students 1 and 2
puts '=============================================='
puts ''
puts 'DATA FROM PROJECT 1 - ADD PERSON, STUDENT & TEACHER CLASSES'
puts '-----------------------------------------------------------'
puts ''
puts "Id: #{student1.id} | Student 1: #{student1.name} | Age: #{student1.age}"
puts "Classroom: #{student1.classroom}"
puts "Parent permission: #{student1.parent_permission}"
puts "Hooky: #{student1.play_hooky} Can use services? #{student1.can_use_services?}"
puts ''
puts "Id: #{student2.id} | Student 2: #{student2.name} | Age: #{student2.age}"
puts "Classroom: #{student2.classroom}"
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
puts '====================================================='
puts 'Thank you very much for using the School Library App!'
puts '====================================================='
puts ''
