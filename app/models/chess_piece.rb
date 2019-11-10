class ChessPiece < ApplicationRecord

    class King < ChessPiece
        def valid_move?(x_position, y_position)
          if x_position = x_position and y_position = y+1
            return true
          elsif x_position = x_position and y_position = y-1
            return true
          elsif y_position = y_position and x_position = x+1
            return true
          elsif y_position = y_position and x_position = x-1
            return true
          else return false
          end
        end
    end

    class Queen < ChessPiece
    end

    class Bishop < ChessPiece
    end

    class Knight < ChessPiece
    end

    class Rook < ChessPiece
    end

    class Pawn < ChessPiece
    end
end
