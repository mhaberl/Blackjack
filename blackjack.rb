require_relative 'card.rb'
require_relative 'card_deck.rb'
require_relative 'card_dealer.rb'
require_relative 'player.rb'

p1 = Player.new

c1 = Card.new 'harts', 'A'
c2 = Card.new 'harts', '9'

p1.take c1
p1.take c2

print p1.hand
print "\n"

p2 = Player.new

p2.take c1
p2.take c1
p2.take c2

print p2.hand
print "\n"
