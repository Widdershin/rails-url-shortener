RailsUrlShortener::Application.routes.draw do
  resource :short_urls, only: ['create', 'new']

  match '/:short_url', to: 'short_urls#redirect'
end
