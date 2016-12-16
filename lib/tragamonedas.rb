class Tragamonedas

    def initialize jugador
        @jugador = jugador
        #@a,@b,@c,@d,@e = 0
        @tirada = [@a,@b,@c,@d,@e]
    end

    def getJugador
        @jugador
    end

    def simular tipo
        if tipo == "iguales"
            return [1,1,1]
        end
        if tipo == "distinto"
            return [1,2,3]
        end
    end

    def jugar
        @tirada = [1+Random.rand(3), 1+Random.rand(3), 1+Random.rand(3)]
        #puts @tirada
        @jugador.tiradas += 1
        return @tirada
    end

    def getTirada
        @tirada
    end

end
