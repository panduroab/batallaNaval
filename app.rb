require 'sinatra'
require './config'

get '/' do
    erb :index
end

get '/aA1' do
	erb :index
end