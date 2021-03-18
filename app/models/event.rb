class Event < ApplicationRecord
    belongs_to :admin
    belongs_to :user
    validates :introduction, presence: true
end
