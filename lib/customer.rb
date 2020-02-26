class Customer
    attr_reader :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end
    
    def accounts
        Account.all.select {|account| account.customer == self}
    end

    def banks
        bank_list = accounts.map {|account| account.bank}
        bank_list.uniq
    end

    def new_account(number, balance, bank)
        Account.new(number, balance, bank, self)
    end

    def self.average_number_of_accounts
        (Account.all.length / all.length.to_f).round(2)
    end
end