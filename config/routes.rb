GbcStrmwdJcohair::Application.routes.draw do
  get "later/index"

  get "newspaper/index"

  get "funeral/index"

  get "farewell/index"

  get "testimony/index"

  get "youtube/index"

  get "early/index"

  get "pics/index"

 authenticated :user do
    root :to => 'home#index'
  end
 # get "home/index"

  devise_for :users

  resources :grace_associates
  resources :pics
  resources :early
  resources :youtube
  resources :testimony
  resources :farewell
  resources :funeral
  resources :newspaper
  resources :later
  
  match '/early' => 'early#index', :as => 'early'
  match '/youtube' => 'youtube#index', :as => 'youtube'
  match '/testimony' => 'testimony#index', :as => 'testimony'
  match '/farewell' => 'farewell#index', :as => 'farewell'
  match '/funeral' => 'funeral#index', :as => 'funeral'
  match '/images' => 'assets#images', :as => 'images'
  match '/newspaper' => 'newspaper#index', :as => 'newspaper'
  match '/later' => 'later#index', :as => 'later'


#658b54c3fe69a1a099d15c76b8fb43303719bfed
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
#HEAD
   root :to => 'home#index'

  # root :to => 'welcome#index'
#658b54c3fe69a1a099d15c76b8fb43303719bfed

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
