class BankAccount

  def initialize
    @balance = 0
    @interest_rate = 1.15
  end

  def balance
    @balance
  end

  def balance=(balance)
    @balance = balance
  end

  def interest_rate
    @interest_rate
  end

  def interest_rate=(interest)
    @interest_rate = interest
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest
    @balance *= interest_rate
  end
end
