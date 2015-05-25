class Card

    attr :suite, :value
    def initialize suite, value
        @suite = suite
        @value = value
    end

    def print
        $stdout.print to_s
    end

    def to_s
        @suite + ' ' + @value
    end
end
