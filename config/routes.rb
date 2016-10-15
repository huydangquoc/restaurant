Rails.application.routes.draw do
  resources :food_items
	get 'contact_us' => 'home#contact_us'
	get 'menu' => 'home#menu'
	root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
