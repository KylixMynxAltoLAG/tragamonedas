Feature: Tragamonedas

Scenario: portada
	Given voy a la pagina inicial
	Then veo "Tragamonedas"

Scenario: ingreso mi nombre
	Given voy a la pagina inicial
	Then ingreso nombre "Jose"

Scenario: ingreso dificultad
	Given voy a la pagina inicial
	Then elijo dificultad "Facil"

Scenario: Tiradas empieza en 0
	Given voy a la pagina jugar
	Then veo "Tiradas: 0"

Scenario: Juego 1 tiradas es 1
	Given voy a la pagina jugar
    When toco jugar
	Then veo "Tiradas: 1"

Scenario: boton jugar devuelve numero iguales
	Given voy a la pagina jugar
	When jugar "1,1,1"
	Then veo "[1,1,1]"
    Then veo "Creditos: 19"

Scenario: boton jugar devuelve numero distintos
	Given voy a la pagina jugar
	When jugar "1,2,3"
	Then veo "[1,2,3]"
    Then veo "Creditos: 9"

