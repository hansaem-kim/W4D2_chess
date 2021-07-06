class Board

    #white is on top
    #black is on bottom
    
    def initialize
        @board = Array.new(8) {Array.new(8)}

    end


    def move_piece(start_pos, end_pos)
        raise "There is no piece" if self[start_pos].is_a?(NullPiece)


    end

    def valid_move?(end_pos)

        
    end

    def [](pos)
        row, col = pos
        @board[row][col]
    end

    def []=(pos, value)
        row, col = pos
        @board[row][col] = value
    end

end
