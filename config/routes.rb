 Rails.application.routes.draw do


  get 'sessions/new'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

	root 'blog/posts#index'

	# /author/posts/new
	namespace :author do
		resources :posts
	end


	scope module: 'blog' do
	get 'about' => 'pages#about', as: :about
	get 'contact' => 'pages#contact', as: :contact
	get 'posts' => 'posts#index', as: :posts
	get 'posts/:id' => 'posts#show', as: :post
	end

	resources :users
end
