Rails.application.routes.draw do
  namespace :kool_hints do
    resources :hints, :only => [:edit, :update]
  end
end
