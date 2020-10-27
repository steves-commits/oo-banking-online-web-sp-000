class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount, :count
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @status = 'pending'
    @amount = amount
  end
  
  def both_valid?
    if sender.valid? && receiver.valid?
end

def 
  
end
