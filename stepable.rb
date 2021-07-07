require_relative "pieces"

module Stepable
    def moves
        collect_moves = []
        move_diffs.each do |dir|
            dx, dy = dir
            current_pos = [pos[0]+dx, pos[1]+dy]
            if self.board.inside_board?(current_pos) && self.board[current_pos].color != self.color
                collect_moves << current_pos
            end
        end
    end
  
    private
  
    def move_diffs
      # subclass implements this
      raise NotImplementedError
    end
  end
