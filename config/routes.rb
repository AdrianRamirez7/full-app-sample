Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/blog_pages' => 'blog_page#index', as: 'blog_pages'
  post '/blog_pages' => 'blog_page#create', as: 'create_blog_page'
  get '/blog_pages/new' => 'blog_page#new', as: 'new_blog_page'
  get '/blog_pages/:id/edit' => 'blog_page#edit', as: 'edit_blog_page'
  patch '/blog_pages/:id' => 'blog_page#update'
  get '/blog_pages/:id' => 'blog_page#show', as: 'blog_page'
end
