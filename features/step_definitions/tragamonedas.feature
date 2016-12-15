Feature: Tragamonedas

Scenario: portada
	Given voy a la pagina inicial
	Then veo "Tragamonedas"

Scenario: boton jugar devuelve numero iguales
	Given voy a la pagina inicial
	When jugar "iguales"
	Then veo "1 1 1"

Scenario: boton jugar devuelve numero distintos
	Given voy a la pagina inicial
	When jugar "distintos"
	Then veo "1 2 3"
