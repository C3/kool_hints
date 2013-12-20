Rails.application.routes.draw do
  resources :kool_hints, :only => [:edit, :update]
end
