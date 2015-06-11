require_relative 'player.rb'

class Human
    include Player
    
    def initialize name
        super name
    end
end
