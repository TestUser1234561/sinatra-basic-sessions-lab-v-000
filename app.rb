require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret1"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    "#{params[:item]}"
  end
end
