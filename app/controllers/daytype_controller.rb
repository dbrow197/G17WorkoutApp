class DaytypeController < ApplicationController
     def index  
        @user = User.all
     end
    
    def show
        @user = User.find(params[:id])
    end
    def update
         @user = User.find(params[:id])
         
         if @user.update(user_params)
             
            redirect_to @article
         else
            render 'edit'
         end
    end
end
