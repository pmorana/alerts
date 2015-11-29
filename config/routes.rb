Rails.application.routes.draw do
 
 resources :alerts

  get 'welcome/index'

   root 'welcome#index'

 
end
