class Daytype < ApplicationRecord
    belongs_to :progression
    has_many :exercises
end
