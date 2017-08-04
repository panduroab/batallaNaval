Feature:
	Como un jugador
	Deseo registrar un ataque
	Para llevar un control de mis ataques

Scenario: Debe aparecer el titulo Batalla Espacial
	Given inicie el juego
	Then debo ver "Batalla Espacial"

Scenario: Debo ver el tablero de ataque y que sea de 6 x 6
	Given inicie el juego 
	Then debo ver el tablero de "Jugador"
	And que el "tblAtaque" tenga 6 filas
    And que el "tblAtaque" tenga 36 celdas

Scenario: Debo poder registrar un ataque
	Given inicie el juego
	And debo ver el tablero de "Jugador"
	When hago un ataque en "aA1"
	Then debo ver mi ataque registrado en "A1"
