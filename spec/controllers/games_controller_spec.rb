require 'rails_helper'

RSpec.describe GamesController, type: :controller do
    describe "games#index action" do 
        it "should show the board with current piece positions" do
            game = FactoryBot.create(:game)
            get :index, params: { id: game.id }
            expect(response).to have_http_status(:success)
        end
    end
   
    describe "games#create action" do
        it "should allow users to create a new game" do
            game = FactoryBot.create(:game)
	        user = FactoryBot.create(:user)
            expect(response). to have_http_status(:success)
        end 
    end

    describe "games#update action" do
        it "should allow users to update a game" do
            game = FactoryBot.create(:game)
            user = FactoryBot.create(:user)

            patch :update, params: { id: game.id, game: { message: 'wahoo' } }
            expect(response).to have_http_status(:success)
        end
    end 

    describe "games#destroy action" do
        it "should allow users to destroy a game" do
            game = FactoryBot.create(:game)
            delete :destroy, params: { id: game.id }
            expect(response).to redirect_to root_path
            game = Game.find_by_id(game.id)
            expect(game). to eq nil
        end
    end
end
