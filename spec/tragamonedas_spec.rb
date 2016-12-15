require_relative '../lib/tragamonedas.rb'

describe "Tragamonedas" do 

	it "juego: me da valores iguales" do 
        partida = Tragamonedas.new
        resultado = partida.jugar "iguales"
        expect(resultado).to eq([1,1,1])
	end

	it "juego: me da valores distintos" do 
        partida = Tragamonedas.new
        resultado = partida.jugar "distinto"
        expect(resultado).to eq([1,2,3])
	end

end
