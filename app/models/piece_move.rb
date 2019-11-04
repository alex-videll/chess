class PieceMove < ApplicationRecord
  belongs_to :piece
  belongs_to :player
end
