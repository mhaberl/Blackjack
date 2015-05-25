require_relative 'card.rb'

class Player

    attr :cards_in_hand
    def initialize
        @cards_in_hand=[]
    end

    def take card
        @cards_in_hand.push card
    end

    def hand
        value = 0
        ace = 0
        @cards_in_hand.each do |card| 

            if card.value != 'A'
                value = value + card_value(card)
            else
                ace = ace + 1
            end
        end

        values = []
        (0..(ace)).each do |i|
           values.push (value + i * 11 + ace - i)
        end
     
        values_below_21=[]
        values.each {|v|  values_below_21.push v if v<=21 }

        values_below_21
    end

    def card_value card

        raise 'A' if card.value == 'A'
        
        value = card.value.to_i
        value = 10 if ['K','Q','J'].include? card.value
        
        value
    end
end
