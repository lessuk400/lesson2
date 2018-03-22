class Item
  attr_reader :name, :price, :characteristics
  def initialize name, price, characteristics
    @name = name
    @price = price
    @characteristics = characteristics
  end

  def info
    puts "#{@name} - #{@price}"
    @characteristics.each {|key, value| puts "#{key} - #{value}"}
  end
end
