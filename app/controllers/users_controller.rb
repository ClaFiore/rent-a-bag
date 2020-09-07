class UsersController < ApplicationController
    before_action :find_user, only: [:show, :update, :destroy]
    
    def index
        users = User.all 
        render json: users
    end

    def show
        render json: @user
    end

    def update
        @user.update(user_params)
        render json: @user
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: user
        else
            render json: 'User not saved'
        end
    end

    def destroy
        @user.destroy
        render json: 'User destroyed'
    end

private

    def find_user
        @user = User.find_by(id: params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :email, :address, :balance)
    end

end
