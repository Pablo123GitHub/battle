require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    # @name = params[:Name]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
