class Player
    attr_reader :hand, :pot

    def initialize(hand, pot)
        @hand = hand
        @pot = pot
    end

    def ask_change_card
        print "Return positions of cards to get rid of (ex: 1, 2, 4): "
        card_pos = gets.chomp.split(", ")
        discard_cards(card_pos)
    end         

    def discard_cards(cards_pos)
        @hand.delete_cards(cards_pos.sort.reverse)
    end 
end
