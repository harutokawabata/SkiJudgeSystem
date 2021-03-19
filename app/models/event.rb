class Event < ApplicationRecord
    belongs_to :admin, optional: true
    belongs_to :user
    validates :title, presence: true
end
