# consoles = [
#   { name: "Switch", price: 250, color: "blue" },
#   { :name => "Xbox", :price => 300, :color => "green" },
#   { name: "PS4", price: 350, color: "white" },
# ]

# pp consoles

class Store
  attr_accessor :name, :price, :color
  def initialize(name, price, color)
    @name = name
    @price = price
    @color = color
  end

  def print_item
    puts "The #{@color} #{@name} is $#{@price.to_i}."
  end
end

console1 = Store.new("Switch", 250, "blue")
console2 = Store.new("Xbox", 300, "green")
console3 = Store.new("PS4", 250, "white")

console1.print_item
console2.print_item
console3.print_item
