class UsersController < ApplicationController




    def index
        @user = User.new
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        @user.game_session = GameSession.find(params[:user][:code])
        binding.pry
        redirect_to game_session_path(@user.game_session)
    end

    def show
    end

    def update
    end

    def destroy
    end

    def edit
    end

    private

    def user_params
        params.require(:user).permit(
          :first_name,
          :last_name,
          :game_session_id,
          :session_code
        )
      end

    def set_current_user
        @current_user = User.find(session[:id])
    end


end
