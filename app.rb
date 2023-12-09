require_relative 'person'
require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'classroom'
require_relative 'rental'

class App
  def initialize
    @books_list = []
    @persons_list = []
    @rentals_list = []
  end

  def main
    option = ''
    while option != 7
      puts ' ****  SCHOOL      LIBRARY       APP  ****'
      puts 'Options for using this School Library App...'
      puts '1) List all books'
      puts '2) List all people'
      puts '3) Create a Person'
      puts '4) Create a Book'
      puts '5) Create a Rental'
      puts '6) List all Rentals by a given Person ID'
      puts '7) Exit the app'
      print '   Please enter a number here: '
      option = gets.chomp.to_i
      if option < 5
        select_option_a(option)
      else
        select_option_b(option)
      end
      option = ''
    end
  end

  def select_option_a(option)
    case option
    when 1
      list_books
    when 2
      list_persons
      _continue = gets.chomp
    when 3
      create_person
    when 4
      create_book
    end
    system('cls')
  end

  def select_option_b(option)
    case option
    when 5
      puts 'create_rental. Push any key...'
      _continue = gets.chomp
    when 6
      puts 'list_rentals. Push any key...'
      _continue = gets.chomp
    when 7
      exit
    else
      print 'Incorrect option. Push any key to continue'
      _continue = gets.chomp
    end
    system('cls')
  end

  def create_person
    question = ''
    while question != 3
      puts '------------------------------------------------------'
      puts '    Creating Persons...  '
      puts '------------------------------------------------------'
      print '  Options: 1) Student, 2) Teacher, 3) Return to menu '
      question = gets.chomp.to_i
      case question
      when 1
        create_student
      when 2
        create_teacher
      when 3
        system('cls')
        break
      else
        print '  Valid options are 1, 2 or 3: '
        _continue = gets.chomp
      end
    end
  end

  def create_student
    classroom = ''
    puts '  Enter the student\'s values...'
    print '  Name: '
    name = gets.chomp
    print '  Age: (integer from 1 to 99) '
    age = gets.chomp.to_i
    print '  Parent permission: (Y = true, N = false)'
    permission = gets.chomp.capitalize
    parent_permission = case permission
                        when 'Y'
                          true
                        else
                          false
                        end
    @persons_list << Student.new(name, age, parent_permission, classroom)
    print "  Student: #{name} was created sucessfully!  Push any key..."
    _continue = gets.chomp
    system('cls')
  end

  def create_teacher
    specialization = ''
    parent_permission = true
    puts '  Enter the teacher\'s values...'
    print '  Name: '
    name = gets.chomp
    print '  Age: (integer from 1 to 99) '
    age = gets.chomp.to_i
    @persons_list << Teacher.new(name, age, parent_permission, specialization)
    print "  Teacher: #{name} was created sucessfully!  Push any key..."
    _continue = gets.chomp
    system('cls')
  end

  def create_book
    puts '------------------------------------------------------'
    puts '    Creating a Book...  '
    puts '------------------------------------------------------'
    puts '  Enter the title and author of the new book...'
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    @books_list << Book.new(title, author)
    puts "Book \"#{title}\" was created successfully!  Push any key..."
    _continue = gets.chomp
  end

  def create_rental
    puts '------------------------------------------------------'
    puts '    Creating a Rental...  '
    puts '------------------------------------------------------'
    puts '  Select the book by id (from the list)...'
    # Show the list of BOOKS with ID
    if @books_list.empty?
      puts '  There are no Books in the School Library. Please create some books.'
      _continue = gets.chomp
    else
      @books_list.each_with_index do |book, index|
        puts "Id #{index}) Title \"#{book.title}\" Author: #{book.author}"
      end
      print '  Id of book: '
      bookId = gets.chomp.to_i
    end
    puts '  Select the person by id (from the list)...'
    # Show rhe list of PERSONS with ID
    if @persons_list.empty?
      puts '  There are no Persons in the School Library. Please create some persons.'
      _continue = gets.chomp
    else
      @persons_list.each_with_index do |person, index|
        puts "Id #{index} Type #{person.class} Name #{person.name}"
      end
      print '  Id of person: '
      personId = gets.chomp.to_i
    end
    puts '  Enter the date of the rental...'
    print '  Date \"yyyy-mm-dd\": '
    date = gets.chomp
    @rentals_list << Rental.new(bookId, personId, date)
  end

  def list_books
    if @books_list.empty?
      puts '  There are no Books in the School Library!'
    else
      puts '------------------------------------------------------'
      puts '    List of Books...  '
      puts '------------------------------------------------------'
      @books_list.each do |book|
        puts "Title: \"#{book.title}\" by Author: #{book.author}"
      end
    end
    puts '  Push any key...'
    _continue = gets.chomp
  end

  def list_persons
    if @persons_list.empty?
      puts '  There are no Persons registered in the School Library!'
    else
      puts '------------------------------------------------------'
      puts '    List of Persons...  '
      puts '------------------------------------------------------'
      @persons_list.each do |person|
        print "Type: #{person.class} Id: #{person.id} Name: #{person.name} Age: #{person.age} "
        puts "Permission: #{person.parent_permission}"
      end
    end
  end

  def list_rentals
  end
end
