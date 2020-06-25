Rails.application.routes.draw do
  root 'posts#index'
  match 'comment_on_post/:post_id' => 'comments#new', :as => 'comment_on_post', via: %i[get post]
  resources :comments
  resources :posts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
