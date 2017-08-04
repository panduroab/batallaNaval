require 'sinatra'
require './config'
require './lib/game'

get '/' do
    game = Game.new 6,6,"tblAtaque"
    session["game"] = game
    session["tblAtaque"] = game.printTable
    erb :index
end

get '/ataque/:celda' do |celda|
	resultado = session["game"].atacar (celda)

	if resultado
		session["msg"] = "Ataque exitoso"
	else
		session["msg"] = "Ataque fallido"
	end
	erb :index
end