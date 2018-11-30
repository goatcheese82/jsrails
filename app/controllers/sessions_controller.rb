class SessionsController < ApplicationController

    def index
        if in_game
            render game_session_path(params[game_session])
        else
            render :index
        end
    end

    def new
        render :index
    end

    def create

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

    def in_game
        params[game_session]
    end

end
