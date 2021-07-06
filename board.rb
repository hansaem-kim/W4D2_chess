require_relative "piece"

class Board

    #white is on top
    #black is on bottom
    
    def initialize
        @board = Array.new(8) {Array.new(8)}

    end


    def move_piece(start_pos, end_pos)
        raise "There is no piece" if self[start_pos].is_a?(NullPiece)


    end



    def populate
        @board.each_with_index do |row, i|
            row.each_with_index do |col, j|
                if i == 1 
                    @board[i][j] = Pawn.new('white', self, [i,j])
                elsif i == 6 
                    @board[i][j] = Pawn.new('black', self, [i,j])
                elsif i == 3 || i == 4 || i == 5 || i == 6
                    @board[i][j] = NullPiece.instance
                end
            end
        end
        @board[0][0] = Rook.new('white', @board, [0,0])
        @board[0][7] = Rook.new('white', @board, [0,7])
        @board[7][7] = Rook.new('black', @board, [7,7])
        @board[7][0] = Rook.new('black', @board, [7,0])

        @board[0][1] = Knight.new('white', @board, [0,1])
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
