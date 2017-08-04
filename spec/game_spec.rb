require './lib/game.rb'
describe Game do
    

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