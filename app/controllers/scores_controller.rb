class ScoresController < ApplicationController

    def create
        score = Score.create(score_params)
    end

    # def index
    #     scores = Score.all
    #     high_scores = scores.max(5) { |a, b| a.value <=> b.value }
    #     render json: high_scores, only: [:user_id, :value]
    # end

    def maxScore
        scoresArray = Score.where(user_id: params[:id])
        if scoresArray.empty?
            render json: { value: 0}
        else
            maxScore = scoresArray.max{ |a, b| a.value <=> b.value}.value
            render json: { value: maxScore }
        end
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
