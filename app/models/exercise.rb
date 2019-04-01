class Exercise < ApplicationRecord
    #LIFTTYPES = [['bench press', 'benchpress']]
    #validates_inclusion_of :lift, :in => LIFTTYPES
    belongs_to :daytype
    has_many :lift
    has_many :sets
    has_many :reps
    has_many :restperiod
    has_many :weights
    
end
