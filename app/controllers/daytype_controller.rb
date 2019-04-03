class DaytypeController < ApplicationController
     def index  
        @daytype = Daytype.all
     end
    
    def show
        @daytype = Daytype.find(params[:id])
    end
    def update
         @daytype = Daytype.find(params[:id])
         
         if @daytype.update(daytype_params)
             
            redirect_to @daytype
         else
            render 'edit'
         end
    end
end
