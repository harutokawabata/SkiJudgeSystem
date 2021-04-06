class Event < ApplicationRecord
    # belongs_to :admin, optional: true
    # belongs_to :user
    has_many :event_users
    has_many :users, through: :event_users
    
    validates :title, presence: true
end
