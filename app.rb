require 'sinatra/base'
require './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
 $player1 = Player.new(params[:player_1_name])
  $player2 = Player.new(params[:player_2_name])
    # session[:player_1_name] = $player1
    # session[:player_2_name] = $player2
    redirect '/play'
  end

  get '/play' do
    #ßp $player = Player.new("global")
    @player_1_name = $player1.name
    @player_2_name = $player2.name
    @player_2_HP = 50 # refactor in constant
    erb(:play)
  end
  # start the server if ruby file executed directly
  # run! if app_file == $PROGRAM_NAME
end
