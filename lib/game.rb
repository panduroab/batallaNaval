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
end