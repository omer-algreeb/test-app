Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    resources :posts
    root 'posts#index'
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
