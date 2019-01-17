require 'deck'

describe "Deck" do 
    subject(:deck) {Deck.new}
     describe "#initialize" do
        it "makes new deck" do 
            expect(deck.cards.length).to eq(52)
        end
    end
end


