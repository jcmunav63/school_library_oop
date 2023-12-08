require_relative 'person'
require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'classroom'
require_relative 'rental'
require_relative 'capitalizedecorator'
require_relative 'trimmerdecorator'

class App
  def initialize
    @books = []
    @people = []
    # @rentals = []
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
      puts 'list persons. Push any key...'
      _continue = gets.chomp
    when 3
      puts 'create_person. Push any key...'
      _continue = gets.chomp
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
  end

  def create_book
    puts '  Enter the title and author of the new book...'
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    @books << Book.new(title, author)
    puts "Book \"#{title}\" was created successfully!"
    puts '  Push any key...'
    _continue = gets.chomp
  end

  def create_rental
  end

  def list_books
    @books.each do |book|
      puts "Title: \"#{book.title}\" by Author: #{book.author}"
    end
    puts '  Push any key...'
    _continue = gets.chomp
  end

  def list_persons
  end

  def list_rentals
  end
end
