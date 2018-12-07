class UsersController < ApplicationController




    def index
        @user = User.new
    end

    def new
        if !!session[:game_session]
            @code = session[:code]
            @user = User.new
        else
            @user = User.new
            @code = nil
        end
    end

    def create
        @user = User.create(user_params)
        @user.game_session = GameSession.find_by(code: params[:user][:code])
        session[:game_session] = @user.game_session
        session[:game_session_id] = @user.game_session.id
        @user.save
        session[:user_id] = @user.id
        if @user.save
            redirect_to game_session_path(@user.game_session)
        else
            redirect_to new_user_path
        end
    end

    def show
    end

    def update
    end

    private

    def user_params
        params.require(:user).permit(
          :first_name,
          :game_session_id,
          :session_code
        )
    end

    def set_current_user
        @current_user = User.find(session[:id])
    end


end
