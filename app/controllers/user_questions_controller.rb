class UserQuestionsController < ApplicationController


    def new
    end
    
    def create
        @round = Round.last
        @answer = UserQuestion.new(answer_params)
        @answer.user = User.find(session[:user_id])
        @answer.game_session = GameSession.find(session[:game_session_id])
        @answer.question = Question.last
        @answer.round_id = @round.id
        
        @answer.save

        redirect_to round_path(@round)




    end


    def show
    end


    private

    def answer_params        
        params.require(:user_question).permit(
        :content,
        :user_id,
        :question_id,
        :game_session_id
    )
    end



end
