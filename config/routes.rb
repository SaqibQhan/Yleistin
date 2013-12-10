Yleistin::Application.routes.draw do
  resource :home

  root 'home#index'
end
