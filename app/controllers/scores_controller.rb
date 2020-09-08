class ScoresController < ApplicationController

    def new
        @score = Score.new(find_by[params])
    end
    def create
        @score = Score.create(params)
    end
private

    def params
        params.require(:score).permit(:value, :user_id)
    end
end
