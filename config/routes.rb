Rails.application.routes.draw do
  root to: 'redirections#new'

  resources :redirections, only: [:create, :new]

  get '/:mask_url', to: 'redirections#redirect', as: :redirect
  get '/:mask_url/info', to: 'redirections#info', as: :redirection_info
end
