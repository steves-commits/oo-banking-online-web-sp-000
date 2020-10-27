class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount 
  
  def initialize(sender, receiver, amount, status='pending')
    @sender = sender 
    @receiver = receiver 
    @status = 'pending'
    @amount = amount
  end
  
  def valid?
    if sender.valid? && receiver.valid?
      true 
    else
      false 
    end
  end
  
  

def reverse_transfer
  if @status == "complete"
    @sender.deposit( @amount ) 
    @receiver.deposit(@amount * -1)
    @status = "reversed"
  end
end

  
  
  
  
  
end
