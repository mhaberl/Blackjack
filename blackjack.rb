require_relative 'card.rb'
require_relative 'card_deck.rb'

d = CardDeck.new
d.shuffle.each {|c| c.print
                    print "\n"}

