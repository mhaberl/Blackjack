class Card

    attr :suite, :value
    def initialize suite, value
        @suite = suite
        @value = value
    end

    def print
        puts name
    end

    def name
        @suite + ' ' + @value
    end
end
