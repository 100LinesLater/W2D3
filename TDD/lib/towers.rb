class Towers
    attr_accessor :board
    def initialize(disks)
        @board = [(1..disks).to_a.reverse, [], []]
    end

    def move(start, finish)
       @board[finish].push(@board[start].pop) if @board[finish].empty? ||@board[start].last < @board[finish].last  
    end 

    def game
        until won?
            print "Choose start and end (ex: 1, 2): "
            guess = gets.chomp.split(", ")
            move(guess.first.to_i - 1, guess.last.to_i - 1)
        end
        puts "you won!"
    end

    def won?
        @board[0].empty? && @board[1].empty?
    end
end