class GameSessionsController < ApplicationController

    require 'securerandom'

    def index
        @game_session = GameSession.new
    end

    def new
        @game_session = GameSession.new
        @user = User.new
    end

    def create
        @game_session = GameSession.new(game_session_params)
        @code = SecureRandom.hex(n=2)
        @game_session.code = @code
        if @game_session.save
            redirect_to game_session_path(@game_session)
        end
    end

    def show
        @game_session = GameSession.find(params[:id])
    end

    def update
    end

    def destroy
    end

    def edit
    end

    def join
        @game_session = GameSession.find params[:code]
        @current_user.game_session = @game_session
        redirect_to game_session_path(@game_session)
    end

    private

    def game_session_params
        params.require(:game_session).permit(
            :code,
            :id
        )
        end
    end


