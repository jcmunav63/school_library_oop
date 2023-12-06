require_relative 'decorator'

# It capitalizes the name string
class CapitalizeDecorator < Decorator
  def correct_name
    nameable.correct_name.capitalize
  end
end
