require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "password"
  end
  
  get '/' do 
    erb :index
  end
  
  post '/checkout' do
    
    session[:item] = input 
    @session = session 
  end

end