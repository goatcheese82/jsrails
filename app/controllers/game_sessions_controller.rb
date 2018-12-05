class GameSessionsController < ApplicationController

    require 'securerandom'

    def index
        if session[:game_session]
            @game_session = GameSession.find(session[:game_session_id])
        else
        @game_session = GameSession.new
        @new_game_session_user = User.new
            redirect_to new_game_session_path
        end
    end

    def new
        if !!session[:user_id]
            @user = User.find(session[:user_id])
            redirect_to user_path(@user)
        else
            @game_session = GameSession.new
            @user = User.new
        end
    end

    def create
        @game_session = GameSession.new
        @code = SecureRandom.hex(n=2)
        session[:code] = @code
        @game_session.code = @code
        if @game_session.save
            session[:game_session] = @game_session
            session[:game_session_id] = @game_session.id
            redirect_to game_session_path(@game_session)
        end
    end

    def show
        if session[:user_id]
            @game_session = GameSession.find(params[:id])
            @user = User.find(session[:user_id])
            @question = Question.random
            @users = User.all
        else
            @game_session = GameSession.find(params[:id])
            @user = User.new
            redirect_to new_game_session_user_path(@game_session)
        end
    end

    def update
    end

    def logout
        session.destroy
        render 'index'
    end

    def edit
    end

    def join
        @game_session = GameSession.find params[:code]
        @current_user.game_session = @game_session
        session[:game_session] = @game_session
        redirect_to game_session_path(@game_session)
    end

    private

    def in_session?
        session[:game_session]
    end

    def game_session_params
        params.require(:game_session).permit(
            :code,
            :id,
            :title,
            users_attributes: [
                :id,
                :first_name
            ]
        )
        end
    end

    def set_user
        @user = params[:user_id]
    end


