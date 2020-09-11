class UsersController < ApplicationController

    def create
        user = User.create(user_params)
    end

    def index
        users = User.all
        high_scores = users.max(5) { |a, b| a.totalscore <=> b.totalscore }
        render json: high_scores, only: [:name, :totalscore]
    end

    def findUser
        user = User.find_or_create_by(user_params)
        render json: {"name": user.name, "user_id": user.id}
    end

    def show
        user = User.find(params[:id])
        total = user.totalscore
        render json: { value: total }
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
    end
private
    def user_params
        params.require(:user).permit(:name, :totalscore)
    end
end
