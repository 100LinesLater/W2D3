require 'towers'

RSpec.describe "Towers of Hanoi" do
    subject (:towers) {Towers.new(3)}
    describe "#initalize" do 
       it "creates starting array" do
          expect(towers.board[0]).to eq([3, 2, 1])
       end
    end

    describe "#move" do 
       it "moves disks correctly" do 
        towers.move(0, 1)
        expect(towers.board[0]).to eq([3, 2])
        expect(towers.board[1]).to eq([1])
       end
    end

    describe "#won" do 
        it "won game" do 
           towers.board[0] = []
           expect(towers.won?).to be true
        end
    end
end


 