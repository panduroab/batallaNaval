Feature:
    Como un jugador
    Deseo que una nave este ubicada en el tablero
    Para empezar a jugar

Scenario: Que el tablero exista y que sea de 6x6
    Given inicie el juego
    And que el "tblJugador" tenga 6 filas
    And que el "tblJugador" tenga 36 celdas
    Then debo ver el tablero de "Jugador"

Scenario: Que mi nave este en el tablero en un posicion fija
    Given inicie el juego
    And debo ver el tablero de "Jugador"
    Then debo ver mi nave en la posición "jA3" 
    And debo ver mi nave en la posición "jA4"
    
Scenario: Que la nava en el tablero ocupe dos cuadritos