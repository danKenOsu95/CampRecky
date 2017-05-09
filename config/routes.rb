Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'

  }
  
  get 'weeks/new'

  get 'weeks/edit'

  get 'weeks/create'

  get 'welcome/index'

  resources :camps

  resources :weeks

  resources :campers do
    member do
      get 'choose_camps'  #choose_camps form
      post 'update_camps' => 'campers#update_camps'  #submit the choose_camps form
      delete 'destroy_camp' => 'campers#destroy_camp' #remove camper from camp
    end
  end

  root :to => 'welcome#index' #routes to static home page

  get 'enroll' => 'begin_enroll#index'

  get 'requirements' => 'requirements#index'

  get 'choose_camps' => 'begin_enroll#choose_camps'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


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
