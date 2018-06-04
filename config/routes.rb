Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources :posts
  #resources :comments

  #get '/posts', to: 'home#return_posts'
  match '/posts', to: 'posts#return_posts', via: :get
  match '/posts', to: 'posts#create_new_post', via: :post
  match '/posts', to: 'posts#edit_post', via: :put
  match '/posts', to: 'posts#remove_post', via: :delete

  match '/posts/:post_id', to: 'posts#return_post', via: :get

  match '/posts/:post_id/comments', to: 'comments#return_comments', via: :get
  match '/comments', to: 'comments#create_new_comment', via: :post
  match '/comments', to: 'comments#edit_comment', via: :put
  match '/comments', to: 'comments#remove_comment', via: :delete

end
