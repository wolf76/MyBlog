Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'
  resources :posts do
    resources :comments
  end
  # root to: "posts#index"

  constraints Clearance::Constraints::SignedOut.new do
    root to: 'posts#index'
  end

  constraints Clearance::Constraints::SignedIn.new do
    root to: 'posts#index', as: :signed_in_root
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
