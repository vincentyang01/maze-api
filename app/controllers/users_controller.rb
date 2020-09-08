class UsersController < ApplicationController

    def create
        user = User.create(user_params)
    end

    def findUser
        user = User.find_or_create_by(user_params)
        debugger
        render json: user
    end
private
    def user_params
        params.require(:user).permit(:name)
    end
end
