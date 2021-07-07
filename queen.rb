require_relative "pieces"

class Queen < Piece
    include Slideable

    def symbol
        '♛'.colorize(color)
    end

    def move_dirs
        HORIZONTAL_VERTICAL_DIRS + DIAGONAL_DIRS
    end

end