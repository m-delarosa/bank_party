require_relative '../config/environment'



# code here
cap_one = Bank.new("Capital One", "Denver")
first = Bank.new("First Bank", "Denver")
chase = Bank.new("Chase", "Denver")

john = Customer.new("John Smith", 35)
bob = Customer.new("Bob Jones", 73)
desirae = Customer.new("Desirae Sun", 21)

ba1 = Account.new("2934875328975", 45.34, cap_one, john)
ba2 = Account.new("234", 1010, first, john, 2009)

ba3 = Account.new("786", 72733, chase, bob, 1987)
ba4 = Account.new("5464", 843843.99, chase, bob, 1950)

ba5 = Account.new("25423", 4.56, first, desirae, 2018)
ba6 = Account.new("76876", 833, cap_one, desirae, 2011)
ba7 = Account.new("2456546", 5.45, chase, desirae)


pp Bank.average_customer_age
# binding.pry

