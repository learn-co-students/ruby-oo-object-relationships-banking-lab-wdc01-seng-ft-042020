class BankAccount
# can initialize a Bank Account (FAILED - 1)
#     initializes with a name (FAILED - 2)
#     always initializes with balance of 1000 (FAILED - 3)
#     always initializes with a status of 'open' (FAILED - 4)
#     can't change its name (FAILED - 5)
    attr_reader :name
    attr_accessor :balance, :status

    def initialize(name)
        @name = name
        @balance = 1000
        @status = 'open'
    end

    def deposit(cash)
        self.balance += cash
    end

    def display_balance
      "Your balance is $#{self.balance}."
    end 

    def valid?
        if self.balance > 0 
            if self.status == "open"
                return true
            end 
        end 
        false 
    end 

    def close_account
        self.status = "closed"
    end 



end

# account =BankAccount.new("mert")
# account.deposit(-1200)
# puts account.valid?

