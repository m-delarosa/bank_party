class Account
    attr_reader :number,
                :open_year,
                :bank,
                :customer,
                :balance

@@all = []

def initialize( number, balance, bank, customer, open_year=2020)
    @number = number
    @balance = balance
    @open_year = open_year
    @bank = bank
    @customer = customer
    
    @@all << self
end

def self.all
    @@all
end

end
