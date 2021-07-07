
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
        collect_moves = []

        move_dirs.each do |dir|
            dx, dy = dir
            collect_moves += grow_unblocked_moves_in_dir(dx, dy)
        end

        collect_moves

    end
  
  
    # protected
  
    def move_dirs
      # subclass implements this
      raise NotImplementedError # this only executes if we dont have this same method written in subclasses
    end
  
  
    # this helper method is only responsible for collecting all moves in a given direction
    # the given direction is represented by two args, the combination of a dx and dy
    def grow_unblocked_moves_in_dir(dx, dy)
      collect_moves = []
      
      row, col = pos

        while true
            row += dx
            col += dy
            current_pos = [row, col]

            break if !@board.inside_board?(pos)

            collect_moves << current_pos if @board[current_pos].color != self.color

            # break if (@board[pos].color == "white" && self.color == "black") || (@board[pos].color == "black" && self.color == "white")
        end
            
        collect_moves
    end
  end
  
  
  
  
  # Note: you can invoke methods from the piece from within the module methods, and vice versa. It is a two way street!