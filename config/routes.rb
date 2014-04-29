Accounting::Application.routes.draw do

  resources :bookkeepings
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  root :to => 'bookkeepings#index', :id => 'welcome'
end
