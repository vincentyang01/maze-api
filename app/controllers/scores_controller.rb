class ScoresController < ApplicationController

    def create
        @score = Score.create(score_params)
    end

    def maxScore
        scoresArray = Score.where(user_id: params[:id])
        maxScore = scoresArray.max.value
        render json: { value: maxScore }
    end

    def totalGames
        scoresArray = Score.where(user_id: params[:id])
        count = scoresArray.count
        render json: { value: count }
    end
    
private

    def score_params
        params.require(:score).permit(:value, :user_id)
    end
end
