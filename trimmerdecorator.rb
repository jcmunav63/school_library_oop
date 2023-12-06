require_relative 'decorator'

# Trims the name string if it's greater than 10 characters long
class TrimmerDecorator < Decorator
  def correct_name
    original_name = nameable.correct_name
    original_name.length > 10 ? original_name[0, 9] : original_name
  end
end
