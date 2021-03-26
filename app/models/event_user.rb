class EventUser < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :event, optional: true
    
    def evented_by?(user)
      events.where(user_id: user.id).exists?
    end
end
