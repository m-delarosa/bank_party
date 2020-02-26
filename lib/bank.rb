class Bank
    attr_reader :name, :city

    @@all = []

    def initialize(name, city)
        @name = name
        @city = city

        @@all << self
    end

    def self.all
        @@all
    end

    def accounts
        Account.all.select {|account| account.bank == self}
    end

    def customers
        accounts.map {|account| account.customer}
    end

    def self.most_customers
        bank = all.max_by { |bank| bank.customers.count }
        p "#{bank.name} Bank has #{bank.accounts.length} customers."
    end

    def new_account(number, balance, customer)
        Account.new(number, balance, self, customer)
    end

    def oldest_account
        accounts.min_by {|account| account.open_year }
        binding.pry
    end

    # Method should return a hash where each name of the bank is the key 
    #   and the values are the number of customers the bank has.
    def self.customer_count
        result = {}

        all.each_entry { |bank| result[bank.name] = bank.customers.length}
        result
        # binding.pry
    end

    # Method should return the average age of all customers for a specific bank.
    def self.average_customer_age
        ((Customer.all.reduce(0) {|sum, customer| sum + customer.age }) / Customer.all.length.to_f)
    end
end 
