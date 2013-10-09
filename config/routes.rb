Contacts::Application.routes.draw do

  resources :users do
    resources :contacts, :only => [:index, :new]
  end
  resources :contacts, :except => [:index, :new]

end

