require_relative "piece"
require_relative "slideable"
class Rook < Piece
    include Slideable
    def move_dirs
        HORIZONTAL_VERTICAL_DIRS
    end
end