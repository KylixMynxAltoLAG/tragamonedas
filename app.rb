require 'sinatra'
require_relative './lib/tragamonedas.rb'
require_relative './lib/jugador.rb'

get '/' do
    erb :home
end

post '/entrar' do
    @@juego = Tragamonedas.new Jugador.new(params['nombre'], params['nivel'].to_i)

    @p1 = "vacio.png"	
    @p2 = "vacio.png"		
    @p3 = "vacio.png"	
	erb :tragamonedas
end

post '/jugar' do
    @@juego.jugar
    @p1 = "#{@@juego.getTirada[0]}.png"	
    @p2 = "#{@@juego.getTirada[1]}.png"	
    @p3 = "#{@@juego.getTirada[2]}.png"	
    erb :tragamonedas

end


