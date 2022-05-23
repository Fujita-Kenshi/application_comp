Rails.application.routes.draw do
  get 'lists/new'
  post 'lists' => 'lists#create'
  get 'lists/index'
  get 'lists/show'
  get 'lists/edit'
  # get 'homes/top' # homes/top のURLにアクセスするとtopページが表示される。
  # get 'homes/top' => 'homes#top' #は同じ意味
  get '/top' => 'homes#top'   # 今回は「/top」でアクセスできるように変更
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
