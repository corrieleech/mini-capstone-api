require 'http'
require 'tty-table'

path = HTTP.get("http://localhost:3000/store_front")

products = path.parse(:json)

table = TTY::Table.new(["Product Name","Price", "Description", "Image"], [["a1", "a2", "a3", "a4"], ["b1", "b2", "b3", "b4"]])

puts table.render(:ascii)

p products[0]["name"]
product_list = []
products.each do |product|
  details = []
  details << product["name"]
  details << product["price"]
  details << product["description"]
  details << product["image_url"]
  product_list << details
end

product_list.each { |product| table << product}

puts table.render(:ascii)