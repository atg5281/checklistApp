Rails.application.routes.draw do
  get 'items/getItems'
  get 'items/deleteItem/:id' => 'items#deleteItem'
  post 'create' => 'welcome#create'
  get 'welcome/index'

  root 'welcome#index'
end
