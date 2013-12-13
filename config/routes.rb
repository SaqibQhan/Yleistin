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
    end
  end
  root 'home#index'

end
