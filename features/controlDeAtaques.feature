Feature:
	Como un jugador
	Deseo registrar un ataque
	Para llevar un control de mis ataques

Scenario: Debe aparecer el titulo Batalla Espacial
	Given inicie el juego
	Then debo ver "Batalla Espacial"

Scenario: Debo ver el tablero de ataque y que sea de 6 x 6
	Given inicie el juego 
	Then debo ver el "tablero_ataque"
	And que el "tablero_ataque" tenga 6 filas
    And que el "tablero_ataque" tenga 36 celdas