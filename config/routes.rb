Rails.application.routes.draw do
	resources :outdated_browser, only: :index do
    collection do
      get :javascript_disabled
    end
  end
end