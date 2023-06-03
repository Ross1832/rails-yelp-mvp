Rails.application.routes.draw do
  root 'restaurants#index'

  resources :restaurants do
    resources :reviews, only: [:new, :create]

    collection do
      get 'top'
    end

    member do
      get 'chef'
    end
  end
end
