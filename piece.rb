require_relative "pawn"
require_relative "knight"
require_relative "bishop"
require_relative "rook"
require_relative "queen"
require_relative "king"

class Piece

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def valid_move?(pos)
        return false if self.color == @board[pos].color
        true   
    end

    def [](pos)

    

end