class BankAccount
  #initialization
  #2
  def initialize(balance,interest)
    @balance = balance
    @interest_rate = interest
    puts "*** Account Created ***"
  end
  #Getters and setters for instance variables
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
  #instance methods
  #3
  def deposit(amount)
    @balance += amount
    puts "*** Deposited $#{amount} into account ***"
    return (@balance).round(2)
  end
  #4
  def withdraw(amount)
    @balance -= amount
    puts "*** Withdrew $#{amount} from account ***"
    return (@balance).round(2)
  end
  #5
  def gain_interest
    @balance += (balance * interest_rate)
    puts "*** Interest gained on account ***"
    return (@balance).round(2)
  end
end
