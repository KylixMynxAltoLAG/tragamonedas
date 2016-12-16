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
        @jugador.creditos -= 1
        if !@simulacion
            @tirada = []
            @tirada = [1+Random.rand(3), 1+Random.rand(3), 1+Random.rand(3)]
        end
        @jugador.tiradas += 1
        @simulacion = false
        getEsGanadora
        return @tirada
    end

    def getTirada
        @tirada
    end

    def getEsGanadora
        salida = ""
        if @tirada.class.to_s == "Array" && @tirada.uniq.size == 1
            salida = "(GANASTE 10 CREDITOS)"
            @jugador.creditos += 10
            fork { exec 'mpg123','-q', '/home/vagrant/csd/tragamonedas/public/jackpot.mp3' }
        end
        return salida
    end

end
