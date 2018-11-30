class QuestionsController < ApplicationController
    def index
    end

    def new
    end

    def create
        @question = Question.new(question_params)

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

    def question_params
        params.require(:question).permit(
            :content
        )
end
