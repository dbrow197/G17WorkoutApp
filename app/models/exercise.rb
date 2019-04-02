class Exercise < ApplicationRecord
    #LIFTTYPES = [['bench press', 'benchpress']]
    #validates_inclusion_of :lift, :in => LIFTTYPES
    belongs_to :daytype
    has_many :lift
    has_many :sets
    has_many :reps
    has_many :restperiod
    has_many :weights
    
    squat = Exercise.create!(:lift => 'squat', :sets => '5', :reps => '3', :restperiod => '3')
    deadlift = Exercise.create!(:lift => 'deadlift', :sets => '1', :reps => '5', :restperiod => '4')
    bench = Exercise.create!(:lift => 'bench', :sets => '5', :reps => '3', :restperiod => '3')
    press = Exercise.create!(:lift => 'press', :sets => '5', :reps => '3', :restperiod => '3')
    chins = Exercise.create!(:lift => 'chins', :sets => '5', :reps => '3', :restperiod => '3')
    cleans = Exercise.create!(:lift => 'cleans;', :sets => '5', :reps => '3', :restperiod => '3')
    
end
