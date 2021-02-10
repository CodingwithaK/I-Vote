Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
    
    resources :candidates
    resources :stances
    resources :users 
    post "/login", to: "users#login"
    get "/auto_login", to: "users#auto_login"
    resources :issues
  end
end