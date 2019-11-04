class Piece < ApplicationRecord
  validates :name, presence: true
  has_many :piece_moves
end
