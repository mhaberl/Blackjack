require_relative 'card.rb'
require_relative 'deck.rb'
require_relative 'dealer.rb'
require_relative 'human.rb'

p1 = Human.new

c1 = Card.new 'harts', 'A'
c2 = Card.new 'harts', '9'

p1.take c1
p1.take c2

print p1.hand
print "\n"

p2 = Human.new

p2.take c1
p2.take c1
p2.take c2

print p2.hand
print "\n"

d = Dealer.new
d.prepare_new_game 2

d.take c1
d.take c2

print d.hand
print "\n"
