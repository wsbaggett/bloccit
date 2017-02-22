Rails.application.routes.draw do

  resources :topics do
     resources :posts, except: [:index]
     resources :sponsored_posts, except: [:index]
  end

  get 'about' => 'welcome#about'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
