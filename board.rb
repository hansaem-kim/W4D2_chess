require_relative "pieces"

class Board
    attr_accessor :board
    #white is on top
    #black is on bottom
    
    def initialize
        @board = Array.new(8) {Array.new(8)}
        populate
    end


    def move_piece(start_pos, end_pos)
        raise "There is no piece" if self[start_pos].is_a?(NullPiece)


    end



    def populate
        self.black_pawn_generate
        self.white_pawn_generate
        self.white_piece_generate
        self.black_piece_generate
        self.null_generate
    end     

    def white_piece_generate
        white_row = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]
        white_row.each_with_index do |piece, index|
            @board[0][index] = piece.new("white", self, [0, index])
        end
    end

    def black_piece_generate
        black_row = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]
        black_row.each_with_index do |piece, index|
            @board[7][index] = piece.new("black", self, [7, index])
        end
    end

    def black_pawn_generate
        (0..7).each do |i|
            @board[6][i] = Pawn.new('black', self, [6,i])
        end
    end

    def white_pawn_generate
        (0..7).each do |i|
            @board[1][i] = Pawn.new('white', self, [1,i])
        end
    end

    def null_generate
        (2..5).each do |i|
            (0..7).each do |j|
                @board[i][j] = NullPiece.instance
            end
        end
    end

    def [](pos)
        row, col = pos
        @board[row][col]
    end

    def []=(pos, value)
        row, col = pos
        @board[row][col] = value
    end

    def inside_board?(pos)
        row, col = pos
        return false if row > 7 || row < 0
        return false if col > 7 || col < 0
        true
    end


end
