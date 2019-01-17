class Deck
    SUITS = ["club", "heart", "spade", "diamond"]

    attr_reader :cards

    def initialize
        @cards = fill_deck
    end

    def fill_deck
        res = []
        (1..13).each do |num|
            SUITS.each do |suit|
                res << Card.new(suit, num)
            end
        end
        res.shuffle
    end

    def deal_card
        @cards.pop unless @cards.empty?
    end
end