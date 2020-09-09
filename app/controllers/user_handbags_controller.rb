class UserHandbagsController < ApplicationController

    def index
        user_handbags = UserHandbag.all 
        render json: user_handbags
    end

    def show
        user_handbag = UserHandbag.find(params[:id])
        render json: user_handbag
    end
    
    def create
        user_handbag = UserHandbag.new(user_id: params[:user_id], handbag_id: params[:handbag_id] )
        user_handbag.save
        render json: user_handbag
    end

    def destroy
        user_handbag = UserHandbag.find(params[:id])
        user_handbag.destroy
        render json: 'UserHandbag destroyed'
    end

end
