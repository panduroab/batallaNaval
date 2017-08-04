require 'sinatra'
require './config'

get '/' do

	session["tblAtaque"] = "
		<table id='tblAtaque' border=1>
        <tr>
        	<td><a id=\"aA1\" href=\"ataque/aA1\">A1</a></td>
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