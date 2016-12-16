class Jugador

    attr_accessor :puntaje, :tiradas
    attr_reader :nombre, :nivel

    def initialize nombre, nivel
        @nombre = nombre
        @nivel = nivel
        @puntaje = 0
        @tiradas = 0
    end

    def getNivelText
        labels = ["Facil", "Normal", "Dificil"]
        return labels[@nivel-1]
    end

end
