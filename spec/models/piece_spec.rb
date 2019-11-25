require 'rails_helper'

RSpec.describe Piece, type: :model do
    let!(:player1) { create :user }
    let!(:player2) { create :user, email: 'player2@example.com' }
    let!(:game1) {create :game, white_player_id: player1.id, black_player_id: player2.id }
    let!(:piece1) {create(:piece, x_position: 4, y_position: 6, player_id: player1.id, game: game1) }
    let!(:piece2) { create(:piece, x_position: 4, y_position: 2, player_id: player1.id, game: game1) }
    let!(:piece3) { create(:piece, x_position: 5, y_position: 2, player_id: player2.id, game: game1) }
  
    context 'vertical moves' do
      it 'obstructed move up' do
        piece = Piece.new(x_position: 4, y_position: 4, player_id: player1.id, game: game1)
        expect(piece.is_obstructed?(4,7)).to be_truthy
      end
    end
end
