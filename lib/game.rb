class Game
  attr_reader :player1, :player2, :current_turn
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = player1
  end

  def attack(opponent)
    opponent.lose_life
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

private

def opponent_of(the_player)
  [@player1, @player2].select { |player| player != the_player}.first
 end

end
