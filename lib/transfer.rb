require_relative "./bank_account.rb"
require 'pry'

class Transfer

  # your code here

  attr_accessor :sender, :receiver, :status, :amount 

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid? 
    if self.sender.valid? 
      if self.receiver.valid? 
        return true
      end 
    end 
    false 
  end 

  def execute_transaction
    if self.status == "pending"
          self.sender.balance -= self.amount
          self.receiver.balance += self.amount 
  
   # binding.pry 
            if self.valid?
              self.status = "complete"
             else 
               self.sender.balance += self.amount
               self.receiver.balance -= self.amount 
               self.status = "rejected"
               "Transaction rejected. Please check your account balance."
               

             
    end 


  end 
end 

def reverse_transfer
  #binding.pry 
  if self.status == "complete"
    #binding.pry
    self.sender.balance += self.amount
    self.receiver.balance -= self.amount
    self.status = "reversed"
  end 

end 



end


mert = BankAccount.new("mert")
davis = BankAccount.new("davis")
transfer1 = Transfer.new(mert, davis, 50)
transfer1.execute_transaction
puts mert.balance
transfer1.reverse_transfer 
puts mert.balance


