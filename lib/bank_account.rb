class BankAccount

    attr_reader :name
    attr_accessor :balance, :status
    @@all = []
    
    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
        @@all << self
    end

    def deposit(money)
        @balance += money
    end

    def display_balance
        "Your balance is $#{balance}."
    end

    def valid?
        self.balance > 0 && self.status == "open"
    end

    def close_account
        self.status = "closed"
    end
end
