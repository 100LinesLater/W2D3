require 'card'

describe "Card" do
    subject(:card) {Card.new("heart", 1)}
    describe "#initialize" do
        it "checks suit" do 
            expect(card.suit).to eq("heart")
        end
        it "checks number" do
            expect(card.number).to eq(1)
        end
    end
end
