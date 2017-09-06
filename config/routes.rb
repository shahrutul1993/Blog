Rails.application.routes.draw do

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
end
