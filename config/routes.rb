Rails.application.routes.draw do
  # Routes for the Favorite resource:
  # CREATE
  get('/favorites/new', { :controller => 'favorites', :action => 'new' })
  get('/create_favorite', { :controller => 'favorites', :action => 'create' })

  # READ
  get('/favorites', { :controller => 'favorites', :action => 'index' })
  get('/favorites/:id', { :controller => 'favorites', :action => 'show' })

  # UPDATE
  get('/favorites/:id/edit', { :controller => 'favorites', :action => 'edit' })
  get('/update_favorite/:id', { :controller => 'favorites', :action => 'update' })

  # DELETE
  get('/delete_favorite/:id', { :controller => 'favorites', :action => 'destroy' })
  #------------------------------

  # Routes for the Address resource:
  # CREATE
  get('/addresses/new', { :controller => 'addresses', :action => 'new' })
  get('/create_address', { :controller => 'addresses', :action => 'create' })

  # READ
  get('/addresses', { :controller => 'addresses', :action => 'index' })
  get('/addresses/:id', { :controller => 'addresses', :action => 'show' })

  # UPDATE
  get('/addresses/:id/edit', { :controller => 'addresses', :action => 'edit' })
  get('/update_address/:id', { :controller => 'addresses', :action => 'update' })

  # DELETE
  get('/delete_address/:id', { :controller => 'addresses', :action => 'destroy' })
  #------------------------------

  # Routes for the Restriction resource:
  # CREATE
  get('/restrictions/new', { :controller => 'restrictions', :action => 'new' })
  get('/create_restriction', { :controller => 'restrictions', :action => 'create' })

  # READ
  get('/restrictions', { :controller => 'restrictions', :action => 'index' })
  get('/restrictions/:id', { :controller => 'restrictions', :action => 'show' })

  # UPDATE
  get('/restrictions/:id/edit', { :controller => 'restrictions', :action => 'edit' })
  get('/update_restriction/:id', { :controller => 'restrictions', :action => 'update' })

  # DELETE
  get('/delete_restriction/:id', { :controller => 'restrictions', :action => 'destroy' })
  #------------------------------

  # Routes for the Amenity resource:
  # CREATE
  get('/amenities/new', { :controller => 'amenities', :action => 'new' })
  get('/create_amenity', { :controller => 'amenities', :action => 'create' })

  # READ
  get('/amenities', { :controller => 'amenities', :action => 'index' })
  get('/amenities/:id', { :controller => 'amenities', :action => 'show' })

  # UPDATE
  get('/amenities/:id/edit', { :controller => 'amenities', :action => 'edit' })
  get('/update_amenity/:id', { :controller => 'amenities', :action => 'update' })

  # DELETE
  get('/delete_amenity/:id', { :controller => 'amenities', :action => 'destroy' })
  #------------------------------

  # Routes for the Building_attribute resource:
  # CREATE
  get('/building_attributes/new', { :controller => 'building_attributes', :action => 'new' })
  get('/create_building_attribute', { :controller => 'building_attributes', :action => 'create' })

  # READ
  get('/building_attributes', { :controller => 'building_attributes', :action => 'index' })
  get('/building_attributes/:id', { :controller => 'building_attributes', :action => 'show' })

  # UPDATE
  get('/building_attributes/:id/edit', { :controller => 'building_attributes', :action => 'edit' })
  get('/update_building_attribute/:id', { :controller => 'building_attributes', :action => 'update' })

  # DELETE
  get('/delete_building_attribute/:id', { :controller => 'building_attributes', :action => 'destroy' })
  #------------------------------

  # Routes for the Buildinghood resource:
  # CREATE
  get('/buildinghoods/new', { :controller => 'buildinghoods', :action => 'new' })
  get('/create_buildinghood', { :controller => 'buildinghoods', :action => 'create' })

  # READ
  get('/buildinghoods', { :controller => 'buildinghoods', :action => 'index' })
  get('/buildinghoods/:id', { :controller => 'buildinghoods', :action => 'show' })

  # UPDATE
  get('/buildinghoods/:id/edit', { :controller => 'buildinghoods', :action => 'edit' })
  get('/update_buildinghood/:id', { :controller => 'buildinghoods', :action => 'update' })

  # DELETE
  get('/delete_buildinghood/:id', { :controller => 'buildinghoods', :action => 'destroy' })
  #------------------------------

  resources :building_attributes

  # Routes for the Neighborhood resource:
  # CREATE
  get('/neighborhoods/new', { :controller => 'neighborhoods', :action => 'new' })
  get('/create_neighborhood', { :controller => 'neighborhoods', :action => 'create' })

  # READ
  get('/neighborhoods', { :controller => 'neighborhoods', :action => 'index' })
  get('/neighborhoods/:id', { :controller => 'neighborhoods', :action => 'show' })

  # UPDATE
  get('/neighborhoods/:id/edit', { :controller => 'neighborhoods', :action => 'edit' })
  get('/update_neighborhood/:id', { :controller => 'neighborhoods', :action => 'update' })

  # DELETE
  get('/delete_neighborhood/:id', { :controller => 'neighborhoods', :action => 'destroy' })
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get('/users/new', { :controller => 'users', :action => 'new' })
  get('/create_user', { :controller => 'users', :action => 'create' })

  # READ
  get('/users', { :controller => 'users', :action => 'index' })
  get('/users/:id', { :controller => 'users', :action => 'show' })

  # UPDATE
  get('/users/:id/edit', { :controller => 'users', :action => 'edit' })
  get('/update_user/:id', { :controller => 'users', :action => 'update' })

  # DELETE
  get('/delete_user/:id', { :controller => 'users', :action => 'destroy' })
  #------------------------------

  # Routes for the Building resource:
  # CREATE
  get('/buildings/new', { :controller => 'buildings', :action => 'new' })
  get('/create_building', { :controller => 'buildings', :action => 'create' })

  # READ
  get('/buildings', { :controller => 'buildings', :action => 'index' })
  get('/buildings/:id', { :controller => 'buildings', :action => 'show' })

  # UPDATE
  get('/buildings/:id/edit', { :controller => 'buildings', :action => 'edit' })
  get('/update_building/:id', { :controller => 'buildings', :action => 'update' })

  # DELETE
  get('/delete_building/:id', { :controller => 'buildings', :action => 'destroy' })
  #------------------------------

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
