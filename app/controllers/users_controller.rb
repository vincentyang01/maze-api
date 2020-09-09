class UsersController < ApplicationController

    def create
        user = User.create(user_params)
    end

    def findUser
        user = User.find_or_create_by(user_params)
        render json: {"name": user.name, "user_id": user.id}
    end

    def show
        user = User.find(params[:id])
        total = user.totalscore
        # byebug
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
