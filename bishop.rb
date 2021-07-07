require_relative "pieces"

class Bishop < Piece
    include Slideable

    def symbol
        '♝'.colorize(color)
    end
    
    protected
    def move_dirs
        DIAGONAL_DIRS
    end
end