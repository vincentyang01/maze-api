class ScoresController < ApplicationController

    def create
        @score = Score.create(score_params)
    end

private

    def score_params
        params.require(:score).permit(:value, :user_id)
    end
end
