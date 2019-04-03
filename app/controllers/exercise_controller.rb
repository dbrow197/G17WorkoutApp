class ExerciseController < ApplicationController
    
      
     def index  
        @exercise = Exercise.all
     end
    
    def show
        @exercise = Exercise.find(params[:id])
    end
    
    def new
           @exercise = Exercise.new
    end
    
    def create
       @exercise = Exercise.new(exercise_params)
      
        if @exercise.save
          redirect_to @exercise
    else
         render 'new'
        end
    end
    def update
         @exercise = Exercise.find(params[:id])
         
         if @exercise.update(exercise_params)
             
            redirect_to @exercise
         else
            render 'edit'
         end
    end
    def destroy
        @exercise = Exercise.find(params[:id])
        @exercise.destroy
        
        redirect_to exercise_path
    end
end
