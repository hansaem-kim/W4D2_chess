require "singleton"
require_relative "piece"

class NullPiece < Piece
    attr_reader :color, :symbol
    include Singleton
    def initialize
        @color = nil 
        @symbol = nil
    end
end