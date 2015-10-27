Wellspring::Engine.routes.draw do
  post 'preview', to: 'previews#show', as: :preview

  scope "/:content_class" do
    resources :entries
  end

  resources :images, only: [:index, :new, :create, :destroy]

  root to: 'dashboard#index'
end

# DELETE /:content_class/entries/:id(.:format) wellspring/entries#destroy
# DELETE /images/:id(.:format)                 wellspring/images#destroy