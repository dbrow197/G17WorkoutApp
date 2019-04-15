class ProgressionsController < ApplicationController
    include EnforceSignin
    def my
        @progression = Progression.where(user: current_user).first
        render 'show'
    end
    def increment
        @progression = Progression.where(user: current_user).first
        @progression.benchpress += 10
        @progression.powerclean += 5
        @progression.squats += 10
        @progression.overheadpress += 5
        @progression.deadlift += 20
        # Treat progression save failures as an app exception.
        @progression.save!
        render 'show'
    end
end
