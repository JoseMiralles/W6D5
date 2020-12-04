class CatsController < ApplicationController

    def index
        # @cats = Cat.all.includes(:name, :birth_date, :color, :sex, :description)
        @cats = Cat.all
        render :index
    end
    
    def show
        @cat = Cat.find_by(id: params[:id])
        if @cat 
            render :show
        else
            redirct_to cats_url
        end
    end


end