class Progession < ApplicationRecord
    belongs_to :user
    has_many :weeks
    has_many :days
    has_many :daytypes
end
