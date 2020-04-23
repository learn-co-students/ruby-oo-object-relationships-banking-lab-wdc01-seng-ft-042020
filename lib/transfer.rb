class Transfer
  attr_reader :sender, :receiver
  attr_accessor :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = 'pending'
  end

  def valid?
    self.sender.valid? && self.receiver.valid? 
  end

  def execute_transaction
    self.sender.deposit(-self.amount)
    self.receiver.deposit(self.amount)
    self.status = 'complete'
  end
end
