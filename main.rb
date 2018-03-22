require "./shop.rb"
require './customer.rb'
require "./item.rb"
require "./order.rb"
require "./delivery.rb"
require "./characteristics.rb"

shop = Shop.new()
shop.newCustomer('Alex', 'Downtown')
shop.generateItem
shop.showItems
item = shop.showItem('iPhone 6s')
shop.OrderItem(item)
