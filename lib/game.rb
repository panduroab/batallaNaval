class Game

    def initialize alto, ancho, nombre
        @nombre = nombre
        @tabla = Array.new(alto) { Array.new(ancho) }
    end

    def getTable
        @tabla
    end

    def printTable
        tblPintada = "<table id='#{@nombre}' border=1>"

        @tabla.each do |fila|
            tblPintada = tblPintada + "<tr>"
            
            fila.each do |columna|
                tblPintada = tblPintada + "<td></td>"
            end

            tblPintada = tblPintada + "</tr>"
        end

        tblPintada = tblPintada + "</table>"

        return tblPintada
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