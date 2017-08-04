Feature:
    Como un jugador
    Deseo que una nave este ubicada en el tablero
    Para empezar a jugar

Scenario: Que el tablero exista y que sea de 6x6
    Given inicie el juego
    Then debo ver el "tablero_jugador"
    And que el "tablero_jugador" tenga 6 filas
    And que el "tablero_jugador" tenga 36 celdas


Scenario: Que mi nave este en el tablero en un posicion fija
    
Scenario: Que la nava en el tablero ocupe dos cuadritos