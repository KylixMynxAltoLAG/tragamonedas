require 'sinatra'

get '/' do
	@@resultado = ""
    erb :tragamonedas
end

post '/jugar' do
	tipogame = params['tipojuego']
	if tipogame == "iguales"
		@@resultado = "1 1 1"
	else
		@@resultado = "1 2 3"
	end
	erb :tragamonedas
end
