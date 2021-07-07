require_relative 'board'

class Piece
    attr_reader :pos, :color, :board
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def inspect
        symbol
    end

    def valid_move?(pos)
        return false if self.color == @board[pos].color
        true   
    end

    def empty?
        return true if self.is_a?(NullPiece)
        false
    end

    def symbol
        # symbol
    end

    private
    def move_into_check?(end_pos)
        
    end
    

end