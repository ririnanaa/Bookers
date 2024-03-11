Rails.application.routes.draw do
  resources :books
  get '/' =>"homes#top"
  get 'books' => "books#index"
  post 'books' => "books#create"
  get 'books/:id' => "books#show",as: "bookers"
  get 'books/:id/edit' => "books#edit",as: "edit_bookers"
  patch 'books/:id' => "books#update",as: "update_bookers"
  delete 'books/:id' => "books#destroy",as: "destroy_bookers"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
