Rails.application.routes.draw do
  # namespace :public do
  #   get 'event_users/index'
  #   get 'event_users/new'
  #   get 'event_users/create'
  #   get 'event_users/destroy'
  #   get 'event_users/update'
  # end
  namespace :public do
    get 'events/index'
  end
  # devise_for :admins
  # devise_for :users
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


# namespase admin do
#   get '/admin' => 'admin/homes#top'
# end
# get '/admin' => 'admin/homes#top'
root 'public/homes#top'

  devise_for :admins, controllers: {
      sessions:      'admins/sessions',
      passwords:     'admins/passwords',
      registrations: 'admins/registrations'
    }
devise_for :users, controllers: {
      sessions:      'users/sessions',
      passwords:     'users/passwords',
      registrations: 'users/registrations'
    }

    get '/admin' => 'admin/homes#top'
    
  namespace :admins do
    resources :events
  end
  
  scope module: :public do
    resources :events do
      resources :event_users
    end
  end
  

  #ts
end
    