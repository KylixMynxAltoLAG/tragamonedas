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

Scenario: boton jugar devuelve numero iguales
	Given voy a la pagina jugar
	When jugar "iguales"
	Then veo "1 1 1"

Scenario: boton jugar devuelve numero distintos
	Given voy a la pagina jugar
	When jugar "distintos"
	Then veo "1 2 3"

Scenario: contador empieza en 0
	Given voy a la pagina jugar
	Then veo contador en 0

Scenario: contador suma jugadas
	Given voy a la pagina jugar
	When jugar "distintos"
	Then veo contador en 1




