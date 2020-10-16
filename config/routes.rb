Rails.application.routes.draw do
  
  
  # get 'reviews/index'
  get 'computers/index'
  
  # get computers/6/reviews/3
  resources :computers do 
    resources :reviews
  end
  
    
  # get 'home/index'
  root to: 'home#index'
  get "about" => 'home#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
