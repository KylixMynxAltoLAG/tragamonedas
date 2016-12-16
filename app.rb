require 'sinatra'

get '/' do
	@@nombre = "Jose"
	@@dificultad = ""
    erb :home
end

get '/jugar' do
	@@resultado = ""
	@@contador = 0
	@@dificultad = "Facil"
    erb :tragamonedas
end

post '/jugar' do
	tipogame = params['tipojuego']
	@@contador += 1
	if tipogame == "iguales"
		@@resultado = "1 1 1"
	else
		@@resultado = "1 2 3"
	end
	erb :tragamonedas
end
