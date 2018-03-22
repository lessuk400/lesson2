class Order
  def initialize (customer, item)
    @customer = customer
    @purchasedItem = item
  end

  def getPrice
    @dostavka = UkrPoshta.new()
    puts @purchasedItem.price + @dostavka.deliveryPrice(@purchasedItem.price)
  end
end
