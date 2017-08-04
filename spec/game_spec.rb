require './lib/game.rb'
describe Game do
    it "Crear tabla del Jugador de 6 x 6" do
        game = Game.new 6, 6, "Jugador"
        result = game.getTable
        expect(result.length).to eq 6
        expect(result[0].length).to eq 6
    end

    it "debe marcar un ataque exitoso" do
        game = Game.new
        result = game.atacar("A3")
        expect(result).to eq true
    end

    it "debe marcar un ataque no exitoso"  do
       game = Game.new
        result = game.atacar("A1")
        expect(result).to eq false 
    end
end