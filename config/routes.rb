Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
    post "/login", to: "auth#create"
    get "/auto_login", to: "auth#auto_login"
    
    resources :candidates
    resources :stances
    resources :users 
    resources :issues
  end
end