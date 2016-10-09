Rails.application.routes.draw do
  resources :users
  resources :addresses
  resources :actors
  get 'actors/index'

  get 'actors/show'

  get 'actors/create'

  get 'actors/update'

  get 'actors/destroy'

  resources :movies
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'movies#index'
  resources :movies
  root 'payers#index'
  resources :payers

  #       payers GET    /payers(.:format)                   payers#index
  #              POST   /payers(.:format)                   payers#create
  #    new_payer GET    /payers/new(.:format)               payers#new
  #   edit_payer GET    /payers/:id/edit(.:format)          payers#edit
  #        payer GET    /payers/:id(.:format)               payers#show
  #              PATCH  /payers/:id(.:format)               payers#update
  #              PUT    /payers/:id(.:format)               payers#update
  #              DELETE /payers/:id(.:format)               payers#destroy
  #
  resources :tasks

  get 'verification_autocomplete/.:format' => 'routes#test_action'

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
