require './lib/game.rb'
describe Game do
    it "Mostrar tabla del Jugador" do
        game = Game.new
        result = game.get_tbl("tblAtaque")
        expect(result).to eq '<table id="tblAtaque" border=1>
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
end