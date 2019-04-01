class User < ApplicationRecord
    has_one :name
    has_one :email
    has_one :progression
end
