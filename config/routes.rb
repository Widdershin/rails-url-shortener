RailsUrlShortener::Application.routes.draw do
  root to: 'index#index'

  resource :short_urls, only: ['create', 'new']

  match '/:short_url', to: 'short_urls#redirect'
end
