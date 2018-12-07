class RoundsController < ApplicationController
    def new
        @round = Round.new
        @game_session = GameSession.find(session[:game_session_id])
    end
    def create
        @question = Question.random
        @round = Round.new
        @round.game_session = GameSession.find(session[:game_session_id])
        @game_session = @round.game_session
        @round.question_id = @question.id
        @round.save
        redirect_to round_path(@round)
    end

    def show
        @user = User.find(session[:user_id])
        @round = Round.find(params[:id])
        @game_session = GameSession.find(session[:game_session_id])
        @answers = @round.user_questions
    end


    private


    def round_params
        params.require(:round).permit(
            :question
        )
    end
end
