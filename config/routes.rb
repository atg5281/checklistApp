Rails.application.routes.draw do
  get 'items/getItems'
  get 'items/deleteItem/:id' => 'items#deleteItem'
  get 'items/postItem/' => 'items#postItem'

  get 'welcome/index'

  root 'welcome#index'
end
