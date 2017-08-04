class Game

    def get_tbl (tbl)
        '<table id="'+tbl+'" border=1>
            <tr>
                <td id="A1"><a href="/ataque/A1">A1</a></td>
                <td id="A2"></td>
                <td id="A3"><a href="/ataque/A3">A3</a></td>
                <td id="A4"></td>
                <td id="A5"></td>
                <td id="A6"></td>
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

    def initialize alto, ancho, nombre, nave = "A3"
        @nombre = nombre
        @tabla = Array.new(alto) { Array.new(ancho) }
        @filas = {0=>1, 1=>2 , 2=>3 , 3 => 4 , 4 => 5 , 5 => 6 }
        @columnas = {0=>"A", 1=>"B" , 2=>"C" , 3 => "D" , 4 => "E" , 5 => "F" }
        @tablero = {
            "A1" => false, "A2" => false, "A3" => false , "A4" => false , "A5" => false , "A6" => false, 
            "B1" => false, "B2" => false, "B3" => false , "B4" => false , "B5" => false , "B6" => false, 
            "C1" => false, "C2" => false, "C3" => false , "C4" => false , "C5" => false , "C6" => false, 
            "D1" => false, "D2" => false, "D3" => false , "D4" => false , "D5" => false , "D6" => false, 
            "E1" => false, "E2" => false, "E3" => false , "E4" => false , "E5" => false , "E6" => false, 
            "F1" => false, "F2" => false, "F3" => false , "F4" => false , "F5" => false , "F6" => false
         }
         @tablero[nave] = true
    end

    def getTable
        @tabla
    end

    def printTable
        tblPintada = "<table id='#{@nombre}' border=1>"

        @tabla.each_with_index do |fila, iFila|
            tblPintada = tblPintada + "<tr>"
            
            fila.each_with_index do |columna, iCol|
                position = @columnas[iCol].to_s + @filas[iFila].to_s
                tblPintada = tblPintada + '<td><a href="/ataque/'+position+'">Atacar ' + position + '</a></td>'
            end

            tblPintada = tblPintada + "</tr>"
        end

        tblPintada = tblPintada + "</table>"

        return tblPintada
    end

    def atacar(celda)
        @tablero[celda]
    end
end