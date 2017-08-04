require 'sinatra'
require './config'
require './lib/game'

get '/' do
    game = Game.new
    session["tblJugador"] = game.get_tbl("tblJugador")
    erb :index
end

get '/aA1' do
	erb :index
end