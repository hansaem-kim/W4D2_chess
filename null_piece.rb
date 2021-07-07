require_relative "piece"
require "singleton"

class NullPiece < Piece
    attr_reader :color, :symbol
    include Singleton
    def initialize
        @color = nil 
        @symbol = "   "
    end

    def moves
        []
    end

    def symbol
        @symbol
    end

end