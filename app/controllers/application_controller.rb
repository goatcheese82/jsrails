class ApplicationController < ActionController::Base

    def in_session?
        session[:game_session]
    end
end
