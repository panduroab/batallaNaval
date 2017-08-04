class Game
    def get_tbl (tbl)
        '<table id="'+tbl+'" border=1>
            <tr>
                <td id="jA1"></td>
                <td id="jA2"></td>
                <td id="jA3">x</td>
                <td id="jA4">x</td>
                <td id="jA5"></td>
                <td id="jA6"></td>
            </tr>
            <tr>
            <td></td><td></td><td></td><td></td><td></td><td></td></tr>
            <tr>
            <td></td><td></td><td></td><td></td><td></td><td></td></tr>
            <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
            <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
            <tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>
        </table>'
    end

def initialize
 @tablero = {"A1" => false, "A2" => false, "A3" => true , "A4" => false , "A5" => false , "A6" => false, 
        "B1" => false, "B2" => false, "B3" => false , "B4" => false , "B5" => false , "B6" => false, 
        "C1" => false, "C2" => false, "C3" => false , "C4" => false , "C5" => false , "C6" => false, 
        "D1" => false, "D2" => false, "D3" => false , "D4" => false , "D5" => false , "D6" => false, 
        "E1" => false, "E2" => false, "E3" => false , "E4" => false , "E5" => false , "E6" => false, 
        "F1" => false, "F2" => false, "F3" => false , "F4" => false , "F5" => false , "F6" => false
     }
 end

    def atacar(celda)
        @tablero[celda]
        
    end
end