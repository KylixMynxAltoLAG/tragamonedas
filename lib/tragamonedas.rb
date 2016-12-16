class Tragamonedas

    def initialize jugador
        @jugador = jugador
        #@a,@b,@c,@d,@e = 0
        @tirada
        @simulacion = false
    end

    def getJugador
        @jugador
    end

    def simular valores
        @simulacion = true
        @tirada = []
        valores.split( ",").each_with_index {|i,pos| @tirada[pos]=i.to_i}
    end

    def jugar
        if !@simulacion
            @tirada = []
            @tirada = [1+Random.rand(3), 1+Random.rand(3), 1+Random.rand(3)]
        end
        @jugador.tiradas += 1
        @simulacion = false
        return @tirada
    end

    def getTirada
        @tirada
    end

    def getEsGanadora
        salida = ""
        puts @tirada.class
        if @tirada.class.to_s == "Array" && @tirada.uniq.size == 1
            salida = "Ganaste"
        end
        return salida
    end

end
