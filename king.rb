require_relative "pieces"

class King < Piece
    include Stepable

    def symbol
        '♚'.colorize(color)
    end
    
    def move_diffs
        [
            [0,1],
            [0,-1],
            [1,0],
            [-1,0],
            [1,1],
            [-1,1],
            [1,-1],
            [-1,-1]
        ]
    end
end