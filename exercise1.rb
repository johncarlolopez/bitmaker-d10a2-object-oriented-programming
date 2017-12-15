#1
require "./BankAccount.rb"

#Method to reduce repeat of printing the test
def print_balance(account)
  puts "There is currently $#{account.balance} in the account"
end

#2
account_john = BankAccount.new(100,0.01)
print_balance(account_john)
#3
account_john.deposit(20)
print_balance(account_john)
#4
account_john.withdraw(10)
print_balance(account_john)
#5
account_john.gain_interest
print_balance(account_john)
