class Paperboy

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  def quota
    50 + (@experience/2)
  end

  def deliver(start_add, end_add)
    houses = (end_add - start_add).abs
    if houses >= quota
      @earnings += (0.25 * quota)
      @earnings += (0.5 * (houses - quota))
      total = ((0.25 * quota) + (0.5 * (houses - quota)))
    else
      @earnings -= 2
      total = -2
    end
    @experience += houses
    return total
  end


  def performance
    "I'm #{@name}, and I have delivered #{@experience} papers, and have made $#{@earnings}"
  end
end

kevin = Paperboy.new("Kevin")
p kevin
p kevin.quota
p "Deliver Address 1 - 51"
tot = kevin.deliver(1, 51)
p kevin
p tot
p "New quota: #{kevin.quota}"
p kevin.performance
p "------------------"
p "Deliver Address 1 - 51"
tot = kevin.deliver(1, 51)
p kevin
p tot
p "New quota: #{kevin.quota}"
p kevin.performance
p "------------------"
p "Deliver Address 300 - 100"
tot = kevin.deliver(300, 100)
p kevin
p tot
p "New quota: #{kevin.quota}"
p kevin.performance
