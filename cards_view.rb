require_relative 'cards_controller'

class CardsView

  def welcome
    puts "Welcome to Ruby Flashcards!"
  end

  def finished
    puts "Great job! You answered all the questions!"
  end

  def get_user_input
    puts 
    print "Enter_Answer:  "
    gets.chomp
  end

  def display_card(card)
    puts
    print "Definition:  "
    puts card.question
  end

  def new_question
    puts
    puts "Good job!"
  end

  def try_later
    puts "We'll try that one later."
  end

  def response_correct
    puts
    puts "Good job! Your response was correct!"
  end

  def response_incorrect
    puts
    puts "Sorry, try again."
  end

end
