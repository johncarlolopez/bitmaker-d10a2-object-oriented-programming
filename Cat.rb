#1
class Cat
  #2
  def initialize(name,preferred_food,meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  #instance methods
  #4
  def eats_at
    if @meal_time > 12
      "#{@meal_time-12} PM"
    elsif @meal_time == 12
      "#{@meal_time} PM"
    else
      "#{@meal_time} AM"
    end
  end
  #5
  def meow
    "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end
end
