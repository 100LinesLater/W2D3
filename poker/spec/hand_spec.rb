require 'hand'

RSpec.describe "Hand" do 
    #initialize
    describe "#flush, #straight, and #straight flush" do 
        let(:card1) { Card.new("club", 1)}
        let(:card2) { Card.new("club", 2)}
        let(:card3) { Card.new("club", 3)}
        let(:card4) { Card.new("club", 4)}
        let(:card5) { Card.new("club", 5)}
        subject(:hand) {Hand.new([card1, card2, card3, card4, card5])}
        describe "#flush" do 
            it "checks if cards have same suit" do 
                expect(hand.flush?).to be true
            end
        end

        describe "#straight" do 
            it "checks if cards are consecutive" do 
                expect(hand.straight?).to be true 
            end
        end

        describe "#straight_flush" do 
            it "checks if cards are consecutive and same suit" do 
                expect(hand.straight_flush?).to be true 
            end
        end
    end
end
