class Player
  def initialize
    @gold_coins = 0
    @lives = 5
    @health_points = 10
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    if @gold_coins %10 == 0
      return level_up
    end
  end

  def do_battle(damage)
    @health_points -= damage
    if @health_points < 1
      @lives -= 1
      @health_points = 10
      if @lives < 1
        return reset
      end
    end
  end

  def reset
    @gold_coins = 0
    @lives = 5
    @health_points = 10
    return "New Game!"
  end

end

kev = Player.new
