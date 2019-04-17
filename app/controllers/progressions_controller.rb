class ProgressionsController < ApplicationController
    include EnforceSignin
    def my
        @progression = Progression.where(user: current_user).first
        render 'show'
    end
    def restart
        @progression = Progression.where(user: current_user).first
        @progression.day =1
        @progression.weeks =1
        @progression.benchpress =0
        @progression.powerclean =0
        @progression.squats =0
        @progression.overheadpress =0
        @progression.deadlift =0
        # Treat progression save failures as an app exception.
        @progression.save!
        render 'show'
    end
    def increment
        @progression = Progression.where(user: current_user).first
        @progression.day += 1
            if @progression.day%3 == 0
              @progression.weeks +=1
            end
        @progression.benchpress += 10
        @progression.powerclean += 5
        @progression.squats += 10
        @progression.overheadpress += 5
        @progression.deadlift += 20
        # Treat progression save failures as an app exception.
        @progression.save!
        render 'show'
    end
    def decrement
        @progression = Progression.where(user: current_user).first
        @progression.day += -6
        @progression.weeks += -2
        @progression.benchpress += -60
        @progression.powerclean += -30
        @progression.squats += 60
        @progression.overheadpress += -30
        @progression.deadlift += -120
        # Treat progression save failures as an app exception.
        @progression.save!
        render 'show'
    end
end
