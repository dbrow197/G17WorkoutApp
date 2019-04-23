class ProgressionsController < ApplicationController
    include EnforceSignin
    def my
       @progression = Progression.where(user: current_user).first
      #@progression = Progression.find_by_user(current_user)
        render 'show'
    end
    def restart
        @progression = Progression.where(user: current_user).first
        @progression.day =1
        @progression.weeks =1
        @progression.benchpress =45
        @progression.powerclean =45
        @progression.squats =45
        @progression.overheadpress =45
        @progression.deadlift =45
        # Treat progression save failures as an app exception.
        @progression.save!
        render 'show'
    end
    def increment
        @progression = Progression.where(user: current_user).first
        @progression.day += 1
            if (@progression.day-1)%3 == 0
              @progression.weeks +=1
            end
            if @progression.day%2 ==0
                 @progression.squats += 10
                 @progression.overheadpress += 5
                 @progression.deadlift += 20
            else
                 @progression.squats += 10
                @progression.benchpress += 10
                @progression.powerclean += 5
            end
        # Treat progression save failures as an app exception.
        @progression.save!
        render 'show'
    end
    def decrement
        @progression = Progression.where(user: current_user).first
        @progression.day += -6
        @progression.weeks += -2
        @progression.benchpress += -30
        @progression.powerclean += -15
        @progression.squats += 60
        @progression.overheadpress += -15
        @progression.deadlift += -60
        # Treat progression save failures as an app exception.
        @progression.save!
        render 'show'
    end
end
