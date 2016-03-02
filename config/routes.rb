Rails.application.routes.draw do
  match "/404" => "errors#not_found", via: [ :get, :post, :patch, :delete ]
  match "/500" => "errors#internal_server_error", via: [ :get, :post, :patch, :delete ]

  root "documents#index"
  resources :documents
end
