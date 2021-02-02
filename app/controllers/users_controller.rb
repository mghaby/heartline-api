class UsersController < ApplicationController
before_action :set_user, only: [:show, :update, :destroy]
    # def index
    #     @users = User.all
    #     render json: @users
    # end

    def create 
        @user = User.create(user_params)
        if @user.save
            auth_token = Knock::AuthToken.new payload: {sub: @user.id}
            render json: {username: @user.username, jwt: auth_token.token}, status: :created
        else
            render json: @user.errors, status: :unprocessable_entity
        end 
    end 

    def show
        render json: @user
    end

    def update
        @user.update(user_params)

        if @user.errors.any?
            render json: @user.errors, status: :unprocessable_entity
        else
            render json: @user, status: 201
        end
    end

    def destroy
        @user.delete
        render json: 204
    end

    def random
        @public_users = User.where(public: true)
        render json: @public_users.sample
    end

    private
    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :height, :weight, :goal_weight, :age, :public, :water, :activity_level)
    end

    def set_user
        begin
            @user = User.find(params[:id])
        rescue
            render json: {error: "User not found"}, status: 404
        end
    end
end