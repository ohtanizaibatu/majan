Rails.application.routes.draw do
  get 'tweets/:tweet_id/likes' => 'likes#create'
  get 'tweets/:tweet_id/likes/:id' => 'likes#destroy'
  get "mypage", to: "tweets#top"
  get "rule", to: "tweets#rule"
  get "yaku", to: "tweets#yaku"

  devise_for :users
  resources :users, only: [:show]
  resources :tweets do
   resources :likes, only: [:create, :destroy]
   resources :comments, only: [:create]
  end

   root "tweets#index"
end