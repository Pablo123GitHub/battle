require 'player'

describe Player do
  let(:player1) { described_class.new('Pablo') }
  let(:player2) { described_class.new('Lucas') }

  it 'returns its name via a method' do
    expect(player1.name).to eq 'Pablo'
  end

  it '#attacks' do
    expect { player1.attack(player2) }.to change { player2.hp }.by(-10)
  end
end
