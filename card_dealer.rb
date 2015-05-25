require_relative 'player.rb'

class CardDealer

    attr :cards

    def initialize
        @cards = CardDeck.new.shuffle
    end

    def prepare_new_game(number_of_decks)

        @cards = []

        c = CardDeck.new
        (1..number_of_decks).each do |i|
            @cards.push *c.shuffle
        end
        @cards
    end
end
