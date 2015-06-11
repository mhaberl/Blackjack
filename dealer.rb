require_relative 'card.rb'
require_relative 'player.rb'

class Dealer

    include Player
    def initialize     
        super 'Dealer'
    end

    attr :cards
    def prepare_new_game(number_of_decks)

        @cards = []

        c = Deck.new
        (1..number_of_decks).each do |i|
            @cards.push *c.shuffle
        end
        @cards
    end
end
