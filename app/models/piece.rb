class Piece < ApplicationRecord
  validates :name, presence: true
  belongs_to :game
  has_many :piece_moves
  has_many :users, foreign_key: "white_player_id", foreign_key: "black_player_id", class_name: "user"

  POSITION_MAP = { 0 => 'a',
                   1 => 'b',
                   2 => 'c',
                   3 => 'd',
                   4 => 'e',
                   5 => 'f'
                   6 => 'g',
                   7 => 'h' }

  def self.position(x,y)
    POSITION_MAP[x] + (y+1).to_s
  end

    scope :vertical_route, ->(game_id, x_arr, y_arr) { where(game_id:
  game_id, x_position: x_arr, y_position: y_arr) }

  def is_obstructed?(x_dest, y_dest)
    direction = direction(x_dest, y_dest)
    pieces = pieces_along_route(direction, x_dest, y_dest)
    route_blocked?(pieces, x_dest, y_dest)
  end

  def route_blocked?(pieces, x_dest, y_dest)
    return false if pieces.empty? || 
    pieces.count == 1 && 
    attackable?(pieces.first, x_dest, y_dest)

  def attackable?(piece, x_dest, y_dest)
    piece.x_position == x_dest &&
    piece.y_position == y_dest &&
    piece.player_id != player_id
  end

  def pieces_along_route(direction, x_dest, y_dest)
    x_arr = value_array(x_position, x_dest)
    y_arr = value_array(y_position, y_dest)
    Piece.send(direction, game_id, x_arr, y_arr)
  end

  def vertical_move?(x_dest, y_dest)
    if x_position == x_dest && y_position != y_dest
      true
    else
      false
  end

    true
  end
end
