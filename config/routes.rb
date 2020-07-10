Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: %w(index show new create) do
    resources :doses, only: %W(new create)
  end
  resources :doses, only: %w(destroy)
end
