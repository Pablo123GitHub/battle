require 'player'

describe Player do
  let(:player) {Player.new("John")}
  it 'returns its name via a method' do

    expect(player.name).to eq 'John'
  end
end
