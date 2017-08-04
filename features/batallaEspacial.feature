Feature:
    Como un jugador
    Deseo que una nave este ubicada en el tablero
    Para empezar a jugar

Scenario: Que el tablero exista y que sea de 6x6
    Given inicie el juego
    And que el tablero tenga 6 filas
    And que el tablero tenga 36 celdas
    Then debo ver el tablero


Scenario: Que mi nave este en el tablero en un posicion fija
    
Scenario: Que la nava en el tablero ocupe dos cuadritos