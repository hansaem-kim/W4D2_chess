module Slideable


    HORIZONTAL_VERTICAL_DIRS = [
        [0, 1],
        [0, -1],
        [1, 0],
        [-1, 0]
    ].freeze

    DIAGONAL_DIRS = [
        [1, 1],
        [1, -1],
        [-1, 1],
        [-1, -1]
    ].freeze
  
    def horizontal_dirs
        HORIZONTAL_VERTICAL_DIRS
    end
  
    def diagonal_dirs
        DIAGONAL_DIRS
    end
  
  
    # should return an array of places a Piece can move to
    def moves
      # create array to collect moves
  
      # iterate over each of the directions in which a slideable piece can move
        # use the Piece subclass' `#move_dirs` method to get this info
        # for each direction, collect all possible moves in that direction
          # and add them to your moves array 
          # (use the `grow_unblocked_moves_in_dir` helper method)
  
      # return the final array of moves (containing all possible moves in all directions)
    end
  
  
    private
  
    def move_dirs
      # subclass implements this
      raise NotImplementedError # this only executes if we dont have this same method written in subclasses
    end
  
  
    # this helper method is only responsible for collecting all moves in a given direction
    # the given direction is represented by two args, the combination of a dx and dy
    def grow_unblocked_moves_in_dir(dx, dy)
      collect_moves = []
      
      row, col = self.pos

        while true
            row += dx
            col += dy
            pos = [row, col]

            break unless self.board.inside_board?

            collect_moves << pos if self.board[pos] == NullPiece.instance

            collect_moves << pos if self.board[pos].color != self.color
        
            break if self.board[pos] != NullPiece.instance

        end
            
        collect_moves
    end
  end
  
  
  
  
  # Note: you can invoke methods from the piece from within the module methods, and vice versa. It is a two way street!