Blog::Application.routes.draw do
  resources :posts do
    resources :comments
    resources :tags
  end

  resources :taggings

end
