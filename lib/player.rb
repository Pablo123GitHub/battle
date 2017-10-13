class Player
  attr_reader :name, :hp

DEFAULT_HIT_POINTS = 60

  def initialize(name)
    @name = name
    @hp = DEFAULT_HIT_POINTS
  end

  def lose_life
    @hp -= 10
  end

  def attack(opponent)
    opponent.lose_life
  end

end
