class Hand
    HANDS = ["High card", "Pair", "3 of a Kind", "Straight",
        "Flush", "Full House", "4 of a Kind", "Straight Flush"]

    attr_reader :cards

        def initialize(cards)
            @cards = cards 
        end
        
        def delete_cards(positions)
            positions.each do |pos|
                cards.delete_at(pos)
            end
        end
        
        def flush?
            suit = cards[0].suit
            @cards.all? do |el|
                el.suit == suit
            end
        end
        
        def straight?
            res = []
            @cards.each do |card|
                res << card.number
            end
            res.sort!
            return false if res.length != res.uniq.length
            i = 0 
            while i < res.length - 1
                return false if res[i + 1] - res[i] > 1 
                i += 1
            end
            true
        end
        
        def straight_flush?
            flush? && straight?
        end

        #finish rest of hands
end