require 'sinatra'
require './config'
require './lib/game'

get '/' do

    game = Game.new
    session["tblAtaque"] = game.get_tbl("tblAtaque")
    erb :index
end

get '/ataque/:celda' do |celda|
	session["tblAtaque"] = "
		<table id='tblAtaque' border=1>
        <tr>
        	<td id=\"aA1\">X</td>
        	<td></td><td></td><td></td><td></td><td></td>
        </tr>
        <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
        <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
        <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
        <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
        <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
    </table>"
	erb :index
end