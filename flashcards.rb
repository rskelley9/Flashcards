# Main file for 
require_relative 'cards_controller'
require_relative 'cards_view'
require_relative 'cards_model'

flashcards = CardsController.new

flashcards.run!
