Rails.application.routes.draw do
  resources :users
  resources :projects
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'projects#index'

  # Example of regular route:
     
   #get 'projects/:id' => 'projects#show'
     

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
    
  #  get 'projects/new' => 'projects#new'

  # resources :admin, :path => "/projects/admin"

  get '/admin' => 'projects#admin'  
  resources :admin, :only => [:index, :show]
  
  
  # Example resource route with options:
     resources :projects do
  #     member do
  # get :admin, on: :collection
  #       post 'toggle'
  #     end
  #
       collection do
  #       get 'sold'
       end
     end

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
