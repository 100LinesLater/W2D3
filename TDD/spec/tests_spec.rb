require 'tests'

RSpec.describe "Tests" do 
    subject(:test) {Tests.new}
    describe "#my_uniq" do 
        it "removes from array duplicates" do 
            expect(test.my_uniq([1,2,1,3,3])).to eq([1,2,3])
        end
    end
     
    describe "#two_sum" do 
        it "equals array of positions that sum to 0" do
            expect(test.two_sum([-1, 0, 2, -2, 1])).to eq([[0, 4], [2, 3]])
        end
    end

    describe "my_transpose" do
        it "transpose matrix" do 
            matrix = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
            matrix_transpose = [[0, 3, 6], [1, 4, 7], [2, 5, 8]]
            expect(test.my_transpose(matrix)).to eq(matrix_transpose)
        end
    end

    describe "#stock_picker" do
        it "most profitable pair of days" do
            expect(test.stock_picker([1,2,3,4,5])).to eq([0,4])
        end
    end
         
      


end