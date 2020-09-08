class HandbagsController < ApplicationController

    before_action :find_handbag, only: [:show, :update, :destroy]
    
    def index
        handbags = Handbag.all 
        render json: handbags
    end

    def show
        render json: @handbag
    end

    def update
        @handbag.update(handbag_params)
        render json: @handbag
    end

    def create
        handbag = Handbag.create(handbag_params)
        if handbag.valid?
            render json: handbag
        else
            render json: handbag.error_messages
        end
    end

    def destroy
        @handbag.destroy
        render json: 'handbag destroyed'
    end

private

    def find_handbag
        @handbag = Handbag.find_by(id: params[:id])
    end

    def handbag_params
        params.require(:handbag).permit(:designer, :bag_type, :color, :fabric, :price, :image, :lister_id)
    end

end
