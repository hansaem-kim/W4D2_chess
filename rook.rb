require_relative "pieces"

class Rook < Piece
    include Slideable

    def symbol
        '♜'.colorize(color)
    end

    def move_dirs
        HORIZONTAL_VERTICAL_DIRS
    end
end