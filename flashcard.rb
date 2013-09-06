require_relative 'cards_controller'
require_relative 'cards_view'
require 'debugger'


class Deck
  attr_reader :cards

  def initialize
    @cards = []
  end

  def import
    cards = []
    File.open('flashcard_samples.txt', 'r').each_line do |line|
      cards << line
    end
    cards.each_slice(3) do |card|
      @cards << Card.new(card[0].chomp, card[1].chomp)
    end
  end

  def select_card
    cards.shuffle![0]
    # debugger
  end

  def finished?
    cards.length == 0
  end

end


class Card
  attr_reader :question, :answer, :id
  
  @@id = 1

  def initialize(question, answer)
    @id = @@id
    @question = question
    @answer = answer
    @@id += 1
  end

  def answer_check(user_input)
    user_input.downcase == answer.downcase
  end

end


test = CardsController.new

test.run!



# p test.flashcards.cards[0].question
# test.flashcards.cards.each {|card| p card.answer}


