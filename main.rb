require_relative 'app'

def main
  system('cls')
  puts ''
  puts '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
  puts '+                                                                             +'
  puts '+           SCHOOL                 LIBRARY                  APP               +'
  puts '+                                                                             +'
  puts '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
  puts ''
  puts '  Push any key to continue...'
  _continue = gets.chomp
  system('cls')

  my_app = App.new
  my_app.main
  system('cls')
end

main
