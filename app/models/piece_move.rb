class PieceMove < ApplicationRecord
  belongs_to :piece
  belongs_to :player
  belongs_to :game


