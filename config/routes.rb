Rails.application.routes.draw do
  root to: "books#index"
  resources :books
  resources :shelves do
    get 'books', to: "books#list_by_shelves"
  end
  resources :authors do
    get 'books', to: "books#list_by_author"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
