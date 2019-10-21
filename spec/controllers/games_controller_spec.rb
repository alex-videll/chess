require 'rails_helper'

RSpec.describe GamesController, type: :controller do
    describe "games#show action" do 
        it "should show the board with current piece positions"
            game = FactoryBot.create(:game)
            get :show, params: { id: game.id }
            expect(response).to have_http_status(:success)
    end
   
    describe "games#create action" do
        it "should allow users to create a new game"
            game = FactoryBot.create(:game)
	        user = FactoryBot.create(:user)
            sign_in user
            expect(response). to have_http_status(:success) 
    end

    describe "games#update action" do
        it "should allow users to update a game"
            game = FactoryBot.create(:game)
            user = FactoryBot.create(:user)
            sign_in user

            patch :update, params: { id: game.id, game: { message: 'wahoo' } }
            expect(response).to have_http_status(:success)
    end 

    describe "games#destroy action" do
        it "should allow users to destroy a game"
            game = FactoryBot.create(:game)
            sign_in game.user
            delete :destroy, params: { id: game.id }
            expect(response).to redirect_to root_path
            game = Game.find_by_id(game.id)
            expect(game). to eq nil
    end

end
