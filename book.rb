require_relative 'rental'

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title: 'unknown', author: 'unknown', rentals: [])
    @title = title
    @author = author
    @rentals = rentals
  end

  def add_rental(person, date)
    # The book itself is included as a parameter
    Rental.new(date, self, person)
  end
end
