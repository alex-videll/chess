class King < ChessPiece
    def valid_move? (cur, dest)
        if (|dest.x - cur.x| == 1 || |dest.x - cur.x| == 0)
             && (|dest.y - cur.y| == 1 || |dest.y - cur.y| == 0) 
             && dest.x < 7 && dest.y <7 && dest.x >=0 && dest.y >=0 
            return true
        else
            return false
        end
    end
end
