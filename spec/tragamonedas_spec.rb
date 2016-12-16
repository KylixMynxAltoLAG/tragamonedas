require_relative '../lib/tragamonedas.rb'
require_relative '../lib/jugador.rb'

describe "Tragamonedas" do

	it "Inicio: Creo jugador con Nombre y Nivel dificultad" do 
        jugador = Jugador.new "Player", 1
        jugador.nombre.should == "Player"
        jugador.nivel.should == 1
	end

	it "Inicio: Entro jugador creditos es 10 y cantidad de tiradas es 0" do 
        jugador = Jugador.new "Player", 1
        juego = Tragamonedas.new jugador
        juego.getJugador.creditos.should == 10
        juego.getJugador.tiradas.should == 0
	end

	it "Juego: Me da valores iguales" do 
        jugador = Jugador.new "Player", 1
        juego = Tragamonedas.new jugador
        juego.simular "1,1,1"
        expect(juego.getTirada).to eq([1,1,1])
	end

	it "Juego: Me da valores distintos" do 
        jugador = Jugador.new "Player", 1
        juego = Tragamonedas.new jugador
        juego.simular "1,2,3"
        expect(juego.getTirada).to eq([1,2,3])
	end

	it "Juego: jugador juega 2 veces y contador jugadas es 2" do 
        jugador = Jugador.new "Player", 1
        juego = Tragamonedas.new jugador
        juego.jugar
        juego.jugar
        juego.getJugador.tiradas.should == 2
	end

end
