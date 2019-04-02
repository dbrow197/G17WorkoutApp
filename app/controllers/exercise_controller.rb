class ExerciseController < ApplicationController
    
      
     def index  
        @user = User.all
     end
    
    def show
        @user = User.find(params[:id])
    end
    
    def new
           @user = User.new
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
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        
        redirect_to articles_path
    end
end
