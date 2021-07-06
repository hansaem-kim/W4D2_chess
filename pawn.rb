require_relative "piece.rb"

class Pawn < Piece
    def initialize(color, board, pos)
        super
    end

    def moves
        # if @color == "white"
        #     pos[0] = pos[0]+1
        # end
    end

    def at_start_row?
        return true if @pos[0] == 1 && @color == "white"
        return true if @pos[0] == 6 && @color == "black"
        false
    end
end