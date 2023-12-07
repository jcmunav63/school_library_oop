class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title: 'unknown', author: 'unknown', rentals: [])
    @title = title
    @author = author
    @rentals = rentals
  end
end
