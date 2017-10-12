class Player
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 50
  end

  def lose_life
    @hp -= 10
  end

  def attack(opponent)
    opponent.lose_life
  end
end
