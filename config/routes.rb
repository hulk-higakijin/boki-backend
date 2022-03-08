Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    registrations: 'auth/registrations'
  }
  get 'currentUser' => 'users#check_current_user'
  resources :users # 後でonlyを設定すること
  resources :outputs
  root 'users#check_current_user'
end
