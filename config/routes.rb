Yleistin::Application.routes.draw do

  devise_for :users, :token_authentication_key => 'authentication_key', :controllers => {:registrations => "devise/registrations", :sessions => "devise/sessions"}
  devise_scope :user do
    get "/users/sign_out", to: "devise/sessions#destroy", :via => [:get, :post]
    get "/users/sign_in", to: "home#index", :via => [:get, :post]
  end

  resource :home
  resource :user_answers do
    collection do
      get :save_answers
      get :compare
      get :reset
    end
  end

  match '/compare' , to: "user_answers#compare" , :via => [:get]
  match '/reset' , to: "user_answers#reset" , :via => [:get]

  root 'home#index'

end
