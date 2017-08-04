require 'sinatra'
require './config'
require './lib/game'

get '/' do
    game = Game.new 6,6,"tblAtaque"
    session["tblAtaque"] = game.printTable
    erb :index
end

get '/ataque/:celda' do |celda|
	session["game"].atacar (celda)
	session["tblAtaque"] = game.get_tbl("tblAtaque")
	erb :index
end