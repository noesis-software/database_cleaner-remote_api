DatabaseCleaner::RemoteApi::Engine.routes.draw do
  match 'clean' => 'database_cleans#show', via: [:get, :post], defaults: { format: :json }
  match 'start' => 'database_cleans#create', via: [:get, :post], defaults: { format: :json }
end
