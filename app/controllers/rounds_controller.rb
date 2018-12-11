class RoundsController < ApplicationController

    def index
        if session[:game_session]
            @game_session = GameSession.find(session[:game_session_id])
            @rounds = @game_session.rounds
            render json: @rounds
        else
            redirect_to root_path
        end
    end


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
        if @round.save
            respond_to do |f|
                f.html {redirect_to @round}
                f.json {render :json => @round }
            end
        end
    end

    def show
        @user = User.find(session[:user_id])
        #render json: @user
        @round = Round.find(params[:id])
        render json: @round
        @game_session = GameSession.find(session[:game_session_id])
        @answers = @round.user_questions
        @users = @game_session.users
    end


    private


    def round_params
        params.require(:round).permit(
            :question
        )
    end
end
