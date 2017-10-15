require 'game'
describe Game do

  let(:player1) { double(:player1) }
  let(:player2) { double(:player2) }
  let(:game) { Game.new(player1,player2)}
  it 'triggers the attack via the game class' do
    expect(player2).to receive(:lose_life)
    game.attack(player2)
  end

  it 'starts the game with two players' do
     expect(Game).to receive(:new).with(player1, player2)
     Game.new(player1,player2)
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player1
    end
  end
  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns do
        game.switch_turns
        expect(game.current_turn).to eq player2
    end
  end
end
end 
