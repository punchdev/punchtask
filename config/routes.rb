Punchtask::Application.routes.draw do
  resources :lists

  root :to => 'high_voltage/pages#show', :id => 'home'
  put '/lists/:id/complete' => 'lists#complete', :as => 'complete_list'
end
