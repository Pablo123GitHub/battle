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
end
