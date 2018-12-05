class RoundsController < ApplicationController
    def new
        @round = Round.new
    end
    def create
        @question = Question.random
        @round = Round.new
        @round.game_session = GameSession.find(session[:game_session_id])
        @round.save
        @round.question = @question
        binding.pry
        
        redirect_to game_session_round_path(@round)
    end

    def show
        @round = Round.find(params[:id]) 
    end


    private


    def round_params
        params.require(:round).permit(
            :question
        )
    end
end
