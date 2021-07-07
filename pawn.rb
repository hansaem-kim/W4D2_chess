require_relative "pieces"

class Pawn < Piece
    def moves
        forward_steps + side_attacks
    end

    def symbol
        '♙'.colorize(color)
    end

    def forward_steps
        forward_move = []
        forward_move += [@pos[0] + forward_dir, @pos[1]]
        if self.at_start_row?
            foward_move += [@pos[0] + 2*forward_dir, @pos[1]]
        end
        foward_move
    end

    def forward_dir
        return 1 if @color == "white"
        return -1 if @color == "black"
    end

    def side_attacks
        diag_move = []
        if @color == "white" && @board[@pos[0]+1, @pos[1]-1].color == "black"
            diag_move += [@pos[0]+1, @pos[1]-1]
        elsif @color == "white" && @board[@pos[0]+1, @pos[1]+1].color == "black"
            diag_move += [@pos[0]+1, @pos[1]+1]
        elsif @color == "black" && @board[@pos[0]-1, @pos[1]-1].color == "white"
            diag_move += [@pos[0]-1, @pos[1]-1]
        elsif @color == "black" && @board[@pos[0]-1, @pos[1]+1].color == "white"
            diag_move += [@pos[0]-1, @pos[1]+1]
        end

        diag_move
    end

    def at_start_row?
        return true if @pos[0] == 1 && @color == "white"
        return true if @pos[0] == 6 && @color == "black"
        false
    end
end