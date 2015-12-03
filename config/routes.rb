Rails.application.routes.draw do
 
 resources :events

  get 'welcome/index'
  get 'events' => 'events#index'
  patch 'events/:id/edit' => 'events#update'

   root 'welcome#index'

 
end
