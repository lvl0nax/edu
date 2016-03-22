Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope '/:locale', locale: /#{I18n.available_locales.join('|')}/ do
    root to: 'welcome#home'
    get '/*path', to: redirect('/')
  end
  root to: redirect("/#{I18n.default_locale}", status: 302), as: :without_locale_root
  get '/*path', to: redirect("/#{I18n.default_locale}/%{path}", status: 302), format: false
end
