class UsersController < ApplicationController

    # def index
    #     @users = User.all
    #     render json: @users
    # end

    def create
        @user = User.create(user_params)
        if @user.errors.any?
            render json: @user.errors, status: :unprocessable_entity
        else
            render json: @user, status: 201
        end
    end

    def show
    end

    def update
    end

    def delete
    end


    private
    def user_params
        params.require(:user).permit(:username, :password_digest, :height, :weight, :goal_weight, :age, :public, :water)
    end

end
