Rails.application.routes.draw do
  #一覧画面へのルーティング
  get '/users', to: 'users#index'
  #新規登録画面へのルーティング
  get '/users/new', to:'users#new'
  #新規登録を行うためのルーティング,登録機能をつけるためのルーティング,post:データを投稿するときのHTTPメソッド
  post '/users', to:'users#create'
  #編集画面へのルーティング
  get '/users/:id/edit', to:'users#edit'
  #更新を行うためのルーティング
  patch '/users/:id', to:'users#update'
  #削除を行うためのルーティング
  delete '/users/:id', to: 'users#destroy'
end
