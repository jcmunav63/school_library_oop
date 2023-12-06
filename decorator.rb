require_relative 'nameable'

# A decorator class with a correct_name method
class Decorator < Nameable
  attr_accessor :nameable

  def initialize(nameable)
    super()
    self.nameable = nameable
  end

  def correct_name
    nameable.correct_name
  end
end
