require_relative 'cards_controller'

class Deck
  attr_reader :cards

  def initialize
    @cards = []
  end

  def import(file)
    cards = []
    File.open(file, 'r').each_line do |line|
      cards << line
    end
    cards.each_slice(3) do |card|
      @cards << Card.new(card[0].chomp, card[1].chomp)
    end
  end

  def select_card
    cards.shuffle![0]
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





