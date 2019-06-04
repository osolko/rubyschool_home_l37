Rails.application.routes.draw do
#  get 'home/contacts'
  get 'home/index'

  resources :articles
  
  resource :contacts, only: [:new, :create], path_names: { :new => ''}
  #get 'contacts' => 'contacts#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
