class CardDeck

    attr :suites, :values, :cards
    def initialize
        @suites = ['clubs', 'diamonds', 'hearts', 'spades']
        @values = ['K', 'Q', 'J', 'A']
        @values.push *(2..10).to_a.collect {|v| v.to_s}

        @cards = @suites.product(@values).collect {|s,v| Card.new s, v}
    end

    def deal
        randomCards=[]
        (1..52).to_a.sample(52).each {|i| randomCards.push @cards[i-1]}
        randomCards
    end
end
