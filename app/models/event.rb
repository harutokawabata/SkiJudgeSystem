class Event < ApplicationRecord
    validates :capacity, presence: true
end
