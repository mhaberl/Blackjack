require_relative 'card.rb'
require_relative 'card_deck.rb'

d = CardDeck.new
d.deal.each {|c| c.print}



