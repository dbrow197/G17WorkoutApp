class Exercise < ApplicationRecord
    LIFTTYPES = [['bench press', 'benchpress']]
    validates_inclusion_of :lift, :in => LIFTTYPES
end
