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
      true 
    else
      false 
    end
  end
  
  def execute_transaction
    if @sender.balance < @amount
      @status = 'rejected'
      return 
  
  
end
