Feature:
	Como un jugador
	Deseo registrar un ataque
	Para llevar un control de mis ataques

Scenario: Debe aparecer el titulo Batalla Espacial
	Given inicie el juego
	Then debo ver "Batalla Espacial"

Scenario: Debo ver el tablero de ataque y que sea de 6 x 6
	Given inicie el juego 
	Then debo ver el tablero de "Ataque"
	And que el "tblAtaque" tenga 6 filas
    And que el "tblAtaque" tenga 36 celdas

Scenario: Debo poder registrar un ataque exitoso
	Given inicie el juego
	And debo ver el tablero de "Ataque"
	When hago un ataque en "A3"
	Then debo ver "Ataque exitoso"