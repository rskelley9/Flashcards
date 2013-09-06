require_relative 'cards_model'
require_relative 'cards_view'

class CardsController

  attr_reader :card
  attr_accessor :flashcards, :view

  def initialize
    @view = CardsView.new
    @flashcards = Deck.new
    flashcards.import
    view.welcome
  end



  def run!
    return view.finished if flashcards.cards.length == 0
    pick_a_card
    display_card(card)
    @guess = view.get_user_input
    until correct?(@guess)
      view.response_incorrect
      display_card(card)
      @guess = view.get_user_input
    end
    flashcards.cards.shift
    view.response_correct
    view.new_question
    run!
    #else call out_put question until three_strikes?
  end

  def answered_already
    #remove displayed card from cards
    #re-call display card, and get new user input
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
