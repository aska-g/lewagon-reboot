# Print a welcome message

# --- STAGE 1
# Display a list of items that the user can buy
# - .each_with_index
# - puts out the name of the item with the price and (index+1)
# - display option to finish checking out

# --- STAGE 2
# Ask the user which item he want to add
# Add the (user input - 1) to the cart array
# - Create an array for the cart
# - Add the index to the cart

# --- STAGE 3
# Add a loop over the item print and user selection

items = [
  { name: 'Book', price: 3.95, category: 'Media' },
  { name: 'TV', price: 299.95 },
  { name: 'Computer', price: 499.95 },
  { name: 'DVD', price: 9.95 },
]
user_selection = nil
cart = []
until user_selection == ""
  items.each_with_index do |item, index|
    puts "#{index + 1} - #{item[:name]} $#{item[:price]}"
  end
  puts "Please select an item"
  user_selection = gets.chomp
  cart << user_selection.to_i - 1 unless user_selection == ""
end

total = 0
cart.each do |item_index|
  item = items[item_index]
  puts "$#{item[:price].to_s} #{item[:name]} "
  total += item[:price]
end

puts 'The total is: $' + total.to_s

# --- STAGE 4
# Checkout (Print the bill)
# - iterate over the cart elements
# - convert the cart index into an item
# - print out the name and price of an item
# - add up all the prices
# - print out the total

