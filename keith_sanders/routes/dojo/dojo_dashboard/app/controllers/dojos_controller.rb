class DojosController < ApplicationController
    def index
        @dojo = Dojo.all 
    end
    def new
    end 
    def create
        @dojo = Dojo.create( dojo_params )
       return redirect_to "/"
    end
    def show 
        @dojo = Dojo.find( params[:id] )
    end
    def edit 
        @dojo = Dojo.find( params[:id] )
    end 
    def update
        @dojo = Dojo.find( params[:id] )
        @dojo.update(dojo_params)
        return redirect_to "/"
    end
    private
        def dojo_params
            params.require(:dojo).permit(:branch, :street, :city, :state)
        end
end