Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope '/:locale', locale: /#{I18n.available_locales.join('|')}/ do
    devise_for :users
    resources :providers, only: [:show, :index, :new, :create] do
      resources :courses, only: [:show, :index]
    end
    resources :courses, only: [:show, :index, :new, :create]
    resources :feed_backs, only: [:create]
    get '/about', to: 'welcome#about', as: :about
    get '/contacts', to: 'welcome#contacts', as: :contacts
    get '/profile', to: 'welcome#profile', as: :profile
    root to: 'welcome#home'
  end
  root to: redirect("/#{I18n.default_locale}", status: 302), as: :without_locale_root
  get '/*path', to: redirect("/#{I18n.default_locale}/%{path}", status: 302),
      constraints: {path: /(?!((#{I18n.available_locales.join("|")}|assets))\/).*/}, format: false
end
