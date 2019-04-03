class ProgressionController < ApplicationController
    def index  
        @progression = Progression.all
    end
    def create
       @progression = Progression.new(progression_params)
      
        if @progression.save
          redirect_to @progression
        else
         render 'new'
        end
    end
    def update
         @progression = Progression.find(params[:id])
         
         if @progression.update(progression_params)
             
            redirect_to @progression
         else
            render 'edit'
         end
    end
    def show
        @progression = Progression.find(params[:id])
    end
    def destroy
        @progression = Progression.find(params[:id])
        @progression.destroy
        
        redirect_to progression_path
    end
end
