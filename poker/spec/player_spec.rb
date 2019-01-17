require 'player'

RSpec.describe "Player" do 
    let(:card1) { Card.new("club", 1)}
    let(:card2) { Card.new("club", 2)}
    let(:card3) { Card.new("club", 3)}
    let(:card4) { Card.new("club", 4)}
    let(:card5) { Card.new("club", 5)}
    let(:hand) {Hand.new([card1, card2, card3, card4, card5])}
    subject(:player) {Player.new(hand, 100)}
    describe "#initialize" do 
        it "correct setup" do 
            expect(player.pot).to eq(100)
        end
    end

    describe "#discard" do 
        it "discard cards" do
            card_pos = [0, 2, 4]
            player.discard_cards(card_pos)
            expect(player.hand.cards.length).to eq(2) 
        end
    end
end