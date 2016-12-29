Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  root "home#index"

  # routes for Boards
  match 'board', to: 'board#show', via: :get
  match 'new_board', to: 'board#new', via: [:get, :post]

  resources :board do
      resources :streams do
          resources :post
      end
  end

  get 'streams/index'

  get '/board/:board_id/streams/:id/newPost', to: 'post#new_post'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
