Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'by_date/:date', to: 'ufs#by_date'
      get 'client/:name',  to: 'ufs#client'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
