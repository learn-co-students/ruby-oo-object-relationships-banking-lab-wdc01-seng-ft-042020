
class Transfer
   attr_reader :receiver, :sender, :amount, :status
   attr_writer :status


  @@executed = []

    def initialize(sender, receiver, amount)
         @sender = sender
         @receiver = receiver
         @status = "pending"
         @amount = amount
        
    end

    def valid?
      
      self.sender.valid? && self.receiver.valid? && self.sender.balance > self.amount
    
    end

    def check_unique?
      !@@executed.include?(self)
    end

    def execute_transaction
      if check_unique? && valid?
        self.sender.balance -= self.amount
        self.receiver.balance += self.amount
        @@executed << self
        self.status = "complete"
      else
        self.status = "rejected"
        return "Transaction rejected. Please check your account balance."
    
        #"Transaction rejected. Please check your account balance."
      end
      
    end

    def self.executed
      @@executed
    end

    def reverse_transfer

    end
    
    
end
