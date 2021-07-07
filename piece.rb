require_relative "pawn"
require_relative "knight"
require_relative "bishop"
require_relative "rook"
require_relative "queen"
require_relative "king"

class Piece

    def initialize(color, board, position)
        @color = color
        @board = board
        @position = position
    end

    
end