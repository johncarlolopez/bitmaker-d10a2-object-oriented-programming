#1
class Player
  #init
  def initialize()
    #2,3,4,5
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  #instance methods
  #6
  def level_up
    @lives += 1
  end
  #7
  def collect_treasure
    @gold_coins += 1
    if ((@gold_coins % 10) == 0) && (@gold_coins != 0)
      level_up

    end
  end
  #8
  def do_battle(damage)
    @health_points -= damage
    if (@health_points <= 0) && (@lives == 0)
      restart
    elsif @health_points <= 0
      @health_points = 10
      @lives -= 1
    end
  end
  #9
  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  #testing
  def about
    "Your stats:\n
    Gold:#{@gold_coins}\n
    Health:#{@health_points}\n
    Lives:#{@lives}"
  end
end
