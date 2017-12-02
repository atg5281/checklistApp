Rails.application.routes.draw do
  get 'items/getItems'
  get 'items/deleteItem/:id' => 'items#deleteItem'
  get 'items/checkItem/:id' => 'items#checkItem'
  post 'create' => 'welcome#create'
  get 'welcome/index'

  root 'welcome#index'
end
