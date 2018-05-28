class Cat
  def initialize(name, pref_food, meal_time)
    @name = name
    @pref_food = pref_food
    @meal_time = meal_time
  end
  #dont need to create these "reader" methods to use @instance variables within class 
  # def name
  #   @name
  # end
  #
  # def pref_food
  #   @pref_food
  # end
  #
  # def meal_time
  #   @meal_time
  # end

  def eats_at
    if @meal_time < 12
      return "#{@meal_time}:00 AM"
    elsif @meal_time == 12
      return "#{@meal_time}:00 PM"
    else
      return "#{@meal_time - 12}:00 PM"
    end
  end


  def meow
    puts "Meow, my name is #{@name}, I enjoy #{@pref_food}, and I eat at #{eats_at}"
  end
end

cat1 = Cat.new('Brie', 'Tuna', 5)
puts cat1.eats_at
cat2 = Cat.new('Tom', 'Beef', 12)
puts cat2.eats_at
cat3 = Cat.new('Foo', 'Chips', 23)
puts cat3.eats_at

puts "\n\n"
puts cat1.meow
puts cat2.meow
puts cat3.meow
