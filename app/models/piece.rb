class Piece < ApplicationRecord
  validates :name, presence: true
  has_many :piece_moves

  def is_obstructed?(x_position, y_position)
    direction = direction(x_position, y_position)
    pieces = pieces_along_route(direction, x_position, y_position)
    route_blocked?(pieces, x_position, y_position)
  end

  def route_blocked?(pieces, x_position, y_position)
    return false if pieces.empty? || 
    pieces.count == 1 && 
    attackable?(pieces.first, x_position, y_position)

    true
  end
end
