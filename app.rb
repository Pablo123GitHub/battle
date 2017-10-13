require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    # $player1 = Player.new(params[:player_1_name])
    # $player2 = Player.new(params[:player_2_name])

    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.player1.name
    @player_2_name = $game.player2.name
    @player_2_HP = $game.player2.hp # refactor in constant
    erb(:play)
  end

  post '/receive_attack' do
    p params
    'hello'
    @player_1_name = $game.player1.name
    @player_2_name = $game.player2.name
    # $player2.lose_life
   $game.attack($game.player2)

    erb(:attack)
  end
end
