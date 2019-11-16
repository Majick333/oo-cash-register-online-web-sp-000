
class CashRegister
  attr_accessor :total, :items, :transaction, :discount



  def initialize(discount = 0)
    #set instance variable @total to zero
    #take optional employee discount
    @total = 0
    @items = []
    @discount = discount
    @transaction = []
  end


  def add_item(name, price, number=1)
    if number > 1
      i=0
      while i<number
        @items << name
        i+=1
      end
    else
      @items << name
    end
    @total += price * number
    @transaction << self.total

  end

  def apply_discount()
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
       "After the discount, the total comes to $#{@total.to_i}."
    else
       "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @transaction[-1]
  #  @total

  end


end
