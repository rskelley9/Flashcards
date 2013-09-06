# Main file for 
require_relative 'cards_controller'
require_relative 'cards_view'
require_relative 'cards_model'



def run_program
  list_of_decks = ['Math','Science','Geography','Ruby Flashcards', 'Enter 1 to import your own file']
  puts "Please select the deck you would like to use:"
  list_of_decks.each { |deck| puts deck }
  deck = gets.chomp
  if deck.downcase == "Math".downcase
    input = 'math.txt'
  elsif deck.downcase == "Science".downcase
    input = 'science.txt' 
  elsif deck.downcase == "Geography".downcase
    input = 'geography.txt'
  elsif deck.downcase == 'Ruby Flashcards'.downcase
    input = 'flashcard_samples.txt'
  elsif deck == '1'
    puts 'Please enter the file name:'
    input = gets.chomp
    # if list_of_decks.include?(input) == false
    #   run_program
    # end
  else
    run_program
  end
end



controller = CardsController.new(run_program)
controller.run!
# controller.flashcards.import()
