require 'game'
describe Game do
  let(:game) { Game.new}
  let(:player1) { double(:player1) }
  let(:player2) { double(:player2) }
  it 'triggers the attack via the game class' do
    expect(player2).to receive(:lose_life)
    game.attack(player2)
  end
end
