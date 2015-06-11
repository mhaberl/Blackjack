require_relative 'card.rb'
require_relative 'deck.rb'
require_relative 'dealer.rb'
require_relative 'human.rb'


number_of_decks = 2
number_of_human_players = 1
#number_of_computer_players = 0

players = []
dealer = Dealer.new
players.push dealer

number_of_human_players.times do |i|
    players.push Human.new 'Player ' + (i+1).to_s
end

dealer.prepare_new_game number_of_decks

players.each do |p|
    p.take dealer.cards.pop
    p.take dealer.cards.pop
end

players.each do |p|
    print p.name
    print "\n"
    print p.cards_in_hand
    print "\n"
    print  p.hand
    print "\n"
    print "\n"
end

