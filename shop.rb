class Shop
  def initialize
    @storeName = "iStore"
    @itemsList = []
  end

  def newCustomer name, address
    @customer = Customer.new(@name, @address)
  end


  def generateItem
    newItem = Item.new("iPhone 6s", 5500, {diagonal: 4, cores: 2, camera: 13})
    5.times {@itemsList << newItem}
  end

  def showCatagories
    return 1
  end

  def showItems
    @itemsList.each do |elem|
      puts "#{elem.name} - #{elem.price}"
    end
  end

  def showItem itemName
    currentItem = @itemsList.find {|item| item.name == itemName }
    currentItem.info
    currentItem

  end

  def OrderItem item
    a = Order.new(@customer, item)
    a.getPrice
  end


end
