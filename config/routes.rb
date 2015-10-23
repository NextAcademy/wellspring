Wellspring::Engine.routes.draw do
  post 'preview', to: 'previews#show', as: :preview

  scope "/:content_class" do
    resources :entries
  end

  resources :images, only: [:index, :new, :create, :delete]

  root to: 'dashboard#index'
end
