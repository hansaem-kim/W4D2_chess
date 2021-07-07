require_relative "pieces"

class Piece

<<<<<<< HEAD
    def initialize(color, board, position)
        @color = color
        @board = board
        @position = position
    end

    
=======
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def valid_move?(pos)
        return false if self.color == @board[pos].color
        true   
    end

    def empty?
        return true if self.is_a?(NullPiece)
        false
    end

    def to_s
        symbol
    end

    private
    def move_into_check?(end_pos)
        
    end
    

>>>>>>> 3c5ac917d7c79a7d3281c778f9508f8c1952dc24
end