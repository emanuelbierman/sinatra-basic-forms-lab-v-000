require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/new' do
    @name = params['name']
    @age = params['age']
    @breed = params['breed']
    erb :display_puppy
  end
end


# In app.rb build out a GET request to load a homepage. The homepage should go to the main route /
