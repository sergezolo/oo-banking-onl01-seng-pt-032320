class Transfer
  
  attr_accessor :amount
  attr_reader :sender, :receiver, :status
  
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    sender.balance -= amount
    receiver.balance += amount
    @status = "complete"
  end
  
end
