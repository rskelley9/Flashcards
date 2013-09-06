require_relative 'cards_controller'

class CardsView

  def initialize

  end

  def welcome
    puts "Welcome to Ruby Flashcards!"
  end

  def finished
    puts "Good job!  You answered all the questions!"
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
    puts "Good job! Next question:"
  end

  def try_later
    puts "We'll try that one later."
  end


  def response_correct
    puts
    puts "Your response was correct!"
    puts
  end

  def response_incorrect
    puts
    puts "Sorry, try again."
    puts
  end


end
