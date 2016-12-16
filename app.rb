require 'sinatra'
require_relative './lib/tragamonedas.rb'
require_relative './lib/jugador.rb'

get '/' do
    erb :home
end

post '/entrar' do
    @@juego = Tragamonedas.new Jugador.new(params['nombre'], params['nivel'].to_i)
	erb :tragamonedas
end

post '/jugar' do
    @@juego.jugar
    erb :tragamonedas
end
