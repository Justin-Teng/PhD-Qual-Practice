Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}
  # Modified for password reset functionality
  resources :password_resets,     only: [:new, :create, :edit, :update]
  #get 'password_resets/new'
  #get 'password_resets/edit'
  
  resources :admin
  get '/admin', to:  'admin#index'
  get '/admin_questions', to: 'admin#admin_questions' 
  get '/admin/:id', to: 'admin#show'


  resources :users
  get '/register', to: 'users#new'
  post '/register', to: 'users#create'
  get '/users', to: 'users#show'
  delete "/users/sign_out" => "devise/sessions#destroy"

  resources :home
  root :to => redirect('/home')
  get '/selcat', to: 'selcat#index'
  get '/quiz', to: 'quiz#index'
  
  resources :selcat
  get '/practice', to: 'practice#index'
  
  resources :selquiz
  get '/quiz', to: 'practice#index'
  
 
  resources :practice
  get '/index', to: 'practice#index'
  
  resource :quiz
  
  resources :sessions
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  
  resources :questions

  get 'new_question' => 'questions#new'
  

resources :categories

  get 'new_categories' => 'categories#new'


  # get 'admin/index'

  # get 'admin/show'

  # get 'admin/create'

  # get 'admin/delete'

  # get 'admin/update'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
