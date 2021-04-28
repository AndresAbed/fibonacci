Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      post '/fibonacci', to: 'main#fibonacci'
    end
  end
end
