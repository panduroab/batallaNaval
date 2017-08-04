require './lib/game.rb'
describe Game do
    it "Crear tabla del Jugador de 6 x 6" do
        game = Game.new 6, 6, "Jugador"
        result = game.getTable
        expect(result.length).to eq 6
        expect(result[0].length).to eq 6
    end
end