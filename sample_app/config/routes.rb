Rails.application.routes.draw do
  get 'lists/new'
  # get 'homes/top' # homes/top のURLにアクセスするとtopページが表示される。
  # get 'homes/top' => 'homes#top' #は同じ意味
  get '/top' => 'homes#top'   # 今回は「/top」でアクセスできるように変更
  resources :lists  #
  # post 'lists' => 'lists#create'
  # get 'lists' => 'lists#index'
  # get 'lists/:id' => 'lists#show', as: 'list'
  # get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
  # patch 'lists/:id' => 'lists#update', as: 'update_list'
  # delete 'lists/:id' => 'lists#destroy', as: 'destroy_list'
  
end