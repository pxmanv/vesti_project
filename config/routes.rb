Rails.application.routes.draw do
  devise_for :users

  root("outfits#index")

  get('/outfits/tops/select', { :controller => 'outfits', :action => 'select_top'})
  get('/outfits/tops/add', { :controller => 'outfits', :action => 'add_top'})

  get('/outfits/bottoms/select', { :controller => 'outfits', :action => 'select_bottom'})
  get('/outfits/bottoms/add', { :controller => 'outfits', :action => 'add_bottom'})

  get('/outfits/shoes/select', { :controller => 'outfits', :action => 'select_shoe'})
  get('/outfits/shoes/add', { :controller => 'outfits', :action => 'add_shoe'})

  get('/outfits/outerwears/select', { :controller => 'outfits', :action => 'select_outerwear'})
  get('/outfits/outerwears/add', { :controller => 'outfits', :action => 'add_outerwear'})

  get('/outfits/accessories/select', { :controller => 'outfits', :action => 'select_accessory'})
  get('/outfits/accessories/add', { :controller => 'outfits', :action => 'add_accessory'})

  # Routes for the Occasion resource:
  # CREATE
  get('/occasions/new', { :controller => 'occasions', :action => 'new' })
  get('/create_occasion', { :controller => 'occasions', :action => 'create' })

  # READ
  get('/occasions', { :controller => 'occasions', :action => 'index' })
  get('/occasions/:id', { :controller => 'occasions', :action => 'show' })

  # UPDATE
  get('/occasions/:id/edit', { :controller => 'occasions', :action => 'edit' })
  get('/update_occasion/:id', { :controller => 'occasions', :action => 'update' })

  # DELETE
  get('/delete_occasion/:id', { :controller => 'occasions', :action => 'destroy' })
  #------------------------------

  # Routes for the Fabric resource:
  # CREATE
  get('/fabrics/new', { :controller => 'fabrics', :action => 'new' })
  get('/create_fabric', { :controller => 'fabrics', :action => 'create' })

  # READ
  get('/fabrics', { :controller => 'fabrics', :action => 'index' })
  get('/fabrics/:id', { :controller => 'fabrics', :action => 'show' })

  # UPDATE
  get('/fabrics/:id/edit', { :controller => 'fabrics', :action => 'edit' })
  get('/update_fabric/:id', { :controller => 'fabrics', :action => 'update' })

  # DELETE
  get('/delete_fabric/:id', { :controller => 'fabrics', :action => 'destroy' })
  #------------------------------

  # Routes for the Color resource:
  # CREATE
  get('/colors/new', { :controller => 'colors', :action => 'new' })
  get('/create_color', { :controller => 'colors', :action => 'create' })

  # READ
  get('/colors', { :controller => 'colors', :action => 'index' })
  get('/colors/:id', { :controller => 'colors', :action => 'show' })

  # UPDATE
  get('/colors/:id/edit', { :controller => 'colors', :action => 'edit' })
  get('/update_color/:id', { :controller => 'colors', :action => 'update' })

  # DELETE
  get('/delete_color/:id', { :controller => 'colors', :action => 'destroy' })
  #------------------------------

  # Routes for the Fit resource:
  # CREATE
  get('/fits/new', { :controller => 'fits', :action => 'new' })
  get('/create_fit', { :controller => 'fits', :action => 'create' })

  # READ
  get('/fits', { :controller => 'fits', :action => 'index' })
  get('/fits/:id', { :controller => 'fits', :action => 'show' })

  # UPDATE
  get('/fits/:id/edit', { :controller => 'fits', :action => 'edit' })
  get('/update_fit/:id', { :controller => 'fits', :action => 'update' })

  # DELETE
  get('/delete_fit/:id', { :controller => 'fits', :action => 'destroy' })
  #------------------------------

  # Routes for the Season resource:
  # CREATE
  get('/seasons/new', { :controller => 'seasons', :action => 'new' })
  get('/create_season', { :controller => 'seasons', :action => 'create' })

  # READ
  get('/seasons', { :controller => 'seasons', :action => 'index' })
  get('/seasons/:id', { :controller => 'seasons', :action => 'show' })

  # UPDATE
  get('/seasons/:id/edit', { :controller => 'seasons', :action => 'edit' })
  get('/update_season/:id', { :controller => 'seasons', :action => 'update' })

  # DELETE
  get('/delete_season/:id', { :controller => 'seasons', :action => 'destroy' })
  #------------------------------

  # Routes for the Designer resource:
  # CREATE
  get('/designers/new', { :controller => 'designers', :action => 'new' })
  get('/create_designer', { :controller => 'designers', :action => 'create' })

  # READ
  get('/designers', { :controller => 'designers', :action => 'index' })
  get('/designers/:id', { :controller => 'designers', :action => 'show' })

  # UPDATE
  get('/designers/:id/edit', { :controller => 'designers', :action => 'edit' })
  get('/update_designer/:id', { :controller => 'designers', :action => 'update' })

  # DELETE
  get('/delete_designer/:id', { :controller => 'designers', :action => 'destroy' })
  #------------------------------

  # Routes for the Name resource:
  # CREATE
  get('/names/new', { :controller => 'names', :action => 'new' })
  get('/create_name', { :controller => 'names', :action => 'create' })

  # READ
  get('/names', { :controller => 'names', :action => 'index' })
  get('/names/:id', { :controller => 'names', :action => 'show' })

  # UPDATE
  get('/names/:id/edit', { :controller => 'names', :action => 'edit' })
  get('/update_name/:id', { :controller => 'names', :action => 'update' })

  # DELETE
  get('/delete_name/:id', { :controller => 'names', :action => 'destroy' })
  #------------------------------

  # Routes for the Accessory resource:
  # CREATE
  get('/accessories/new', { :controller => 'accessories', :action => 'new' })
  get('/create_accessory', { :controller => 'accessories', :action => 'create' })

  # READ
  get('/accessories', { :controller => 'accessories', :action => 'index' })
  get('/accessories/:id', { :controller => 'accessories', :action => 'show' })

  # UPDATE
  get('/accessories/:id/edit', { :controller => 'accessories', :action => 'edit' })
  get('/update_accessory/:id', { :controller => 'accessories', :action => 'update' })

  # DELETE
  get('/delete_accessory/:id', { :controller => 'accessories', :action => 'destroy' })
  #------------------------------

  # Routes for the Shoe resource:
  # CREATE
  get('/shoes/new', { :controller => 'shoes', :action => 'new' })
  get('/create_shoe', { :controller => 'shoes', :action => 'create' })

  # READ
  get('/shoes', { :controller => 'shoes', :action => 'index' })
  get('/shoes/:id', { :controller => 'shoes', :action => 'show' })

  # UPDATE
  get('/shoes/:id/edit', { :controller => 'shoes', :action => 'edit' })
  get('/update_shoe/:id', { :controller => 'shoes', :action => 'update' })

  # DELETE
  get('/delete_shoe/:id', { :controller => 'shoes', :action => 'destroy' })
  #------------------------------

  # Routes for the Outerwear resource:
  # CREATE
  get('/outerwears/new', { :controller => 'outerwears', :action => 'new' })
  get('/create_outerwear', { :controller => 'outerwears', :action => 'create' })

  # READ
  get('/outerwears', { :controller => 'outerwears', :action => 'index' })
  get('/outerwears/:id', { :controller => 'outerwears', :action => 'show' })

  # UPDATE
  get('/outerwears/:id/edit', { :controller => 'outerwears', :action => 'edit' })
  get('/update_outerwear/:id', { :controller => 'outerwears', :action => 'update' })

  # DELETE
  get('/delete_outerwear/:id', { :controller => 'outerwears', :action => 'destroy' })
  #------------------------------

  # Routes for the Bottom resource:
  # CREATE
  get('/bottoms/new', { :controller => 'bottoms', :action => 'new' })
  get('/create_bottom', { :controller => 'bottoms', :action => 'create' })

  # READ
  get('/bottoms', { :controller => 'bottoms', :action => 'index' })
  get('/bottoms/:id', { :controller => 'bottoms', :action => 'show' })

  # UPDATE
  get('/bottoms/:id/edit', { :controller => 'bottoms', :action => 'edit' })
  get('/update_bottom/:id', { :controller => 'bottoms', :action => 'update' })

  # DELETE
  get('/delete_bottom/:id', { :controller => 'bottoms', :action => 'destroy' })
  #------------------------------

  # Routes for the Top resource:
  # CREATE
  get('/tops/new', { :controller => 'tops', :action => 'new' })
  get('/create_top', { :controller => 'tops', :action => 'create' })

  # READ
  get('/tops', { :controller => 'tops', :action => 'index' })
  get('/tops/:id', { :controller => 'tops', :action => 'show' })

  # UPDATE
  get('/tops/:id/edit', { :controller => 'tops', :action => 'edit' })
  get('/update_top/:id', { :controller => 'tops', :action => 'update' })

  # DELETE
  get('/delete_top/:id', { :controller => 'tops', :action => 'destroy' })
  #------------------------------

  # Routes for the Outfit resource:
  # CREATE
  get('/outfits/new', { :controller => 'outfits', :action => 'new' })
  get('/create_outfit', { :controller => 'outfits', :action => 'create' })

  # READ
  get('/outfits', { :controller => 'outfits', :action => 'index' })
  get('/outfits/:id', { :controller => 'outfits', :action => 'show' })

  # UPDATE
  get('/outfits/:id/edit', { :controller => 'outfits', :action => 'edit' })
  get('/update_outfit/:id', { :controller => 'outfits', :action => 'update' })

  # DELETE
  get('/delete_outfit/:id', { :controller => 'outfits', :action => 'destroy' })

  # About page:
  get('/about', { :controller => 'about', :action => 'about'})

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
