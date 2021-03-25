class Public::EventUsersController < ApplicationController
    def create
        event_user.user_id = EventUser 
    end
end
