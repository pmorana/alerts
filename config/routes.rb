Rails.application.routes.draw do
 
 resources :events

  get 'welcome/index'
  get 'events' => 'events#index'

   root 'welcome#index'

 
end
