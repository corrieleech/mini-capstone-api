# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.create(name:"Green Bay Packer share", price:350, image_url:"https://archive.jsonline.com/Services/image.ashx?domain=www.jsonline.com&file=26516117-m26502396.jpg&resize=", description: "One share of the best team in the NFL. You too can be an NFL owner")
Product.create(name: "Football", price:25, image_url:"https://assets.aboutamazon.com/dims4/default/1f1d67a/2147483647/strip/true/crop/3888x2188+0+148/resize/1320x743!/quality/90/?url=https%3A%2F%2Famazon-blogs-brightspot.s3.amazonaws.com%2F31%2F96%2F0ab6f148452e9cf744d9e6a9cf28%2Fistock-92024772-1.jpg", description: "Oblong ball used in football")
Product.create(name: "Cleats", price:60, image_url:"https://classic.cdn.media.amplience.net/i/hibbett/X1827_0001_right", description: "Shoes for gripping turf")
Product.create(name: "Brett Favre #4 jersey", price:0, image_url:"https://cdn.shoplightspeed.com/shops/603842/files/36501843/650x750x2/image.jpg", description: "Green Favre #4 Throwback Jersey")
Product.create(name: "Helmet", price:250, image_url:"https://cdn.shopify.com/s/files/1/2458/4861/products/GreenBayPackersSpeedAuthenticUpgradedDamaged01_1024x.jpg?v=1612813298", description: "Brain protection")


