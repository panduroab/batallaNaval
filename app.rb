require 'sinatra'
require './config'
require './lib/game'

get '/' do
    game = Game.new
    session["tblAtaque"] = game.get_tbl("tblAtaque")
    erb :index
end

get '/aA1' do
	erb :index
end