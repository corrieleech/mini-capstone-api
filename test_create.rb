require 'http'

#********CREATE PRODUCT********
# puts "Enter an item."
# item = gets.chomp

# puts "Enter the item's price."
# price = gets.chomp.to_i

# puts "Enter the item's decription."
# description = gets.chomp

# HTTP.post("http://localhost:3000/products", :json => {:name => item, :price => price, :description => description })

#********UPDATE PRODUCT********

puts "Enter the product ID of the item you'd like to change."
 
id = gets.chomp

puts "What should its new name be?"

item = gets.chomp

HTTP.patch("http://localhost:3000/products/#{id}", :json => {:name => item})

#********DELETE PRODUCT********

# puts "Enter the product ID of the item you'd like to delete."

# id = gets.chomp.to_i

# HTTP.delete("http://localhost:3000/products/#{id}")