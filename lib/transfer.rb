
require 'pry'
require_relative './bank_account.rb'
class Transfer
   attr_reader :receiver, :sender, :amount, :status
  #   attr_writer #:status

    def initialize(sender, receiver, amount)
         @sender = sender
         @receiver = receiver
         @status = "pending"
         @amount = amount
    end

    def valid?
    sender_account = sender.valid?
    receiver_account = receiver.valid?
    sender_account && receiver_account
    end

    def execute_transaction
      if valid? 
        sender.balance -= self.amount
        receiver.balance += self.amount
        @status = "complete"
      else
        @status = "rejected"
      end
      
    end
    
     
    
end
