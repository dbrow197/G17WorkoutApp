class UserController < ApplicationController
    def index 
        @users = User.all
    end
    def create
       @user = User.new(user_params)
      
        if @user.save
          redirect_to @user
    else
         render 'new'
        end
    end
    def update
         @user = User.find(params[:id])
         
         if @user.update(user_params)
             
            redirect_to @article
         else
            render 'edit'
         end
    end
    def show
        @user = User.find(params[:id])
    end
    
end
