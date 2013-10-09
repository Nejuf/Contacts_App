Contacts::Application.routes.draw do

  resources :users do
    resources :contacts, :only => [:index, :new]
    get '/favorites' => 'users#favorites', on: :member
  end
  resources :contacts, :except => [:index, :new]

end

