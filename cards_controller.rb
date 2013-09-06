require_relative 'cards_model'
require_relative 'cards_view'

class CardsController

  attr_reader :card, :flashcards, :view

  def initialize(file)
    @view = CardsView.new
    @flashcards = Deck.new
    flashcards.import(file)
    view.welcome
  end

  def run!
    return view.finished if flashcards.finished?
    pick_a_card
    display_card(card)
    @guess = view.get_user_input
    until correct?(@guess)
      return if @guess == "exit" || @guess == "quit"
      view.response_incorrect
      display_card(card)
      @guess = view.get_user_input
    end
    view.response_correct
    flashcards.cards.shift
    run!
  end

  def pick_a_card
    @card = flashcards.select_card
  end
  
  def display_card(card)
    view.display_card(card)
  end 

  def correct?(guess)
    card.answer_check(guess)
  end

  def finished
    if Deck.finished?
      CardsView.finished
    end
  end
  
end
