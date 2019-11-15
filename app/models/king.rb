class King < ChessPiece
    def valid_move? (x, y)
        if |x_position - x| == 1 && |y_position - y| == 1
            return true
        else
            return false
        end
    end
end
