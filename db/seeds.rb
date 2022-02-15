# Image.create!([
#   {url: "https://archive.jsonline.com/Services/image.ashx?domain=www.jsonline.com&file=26516117-m26502396.jpg&resize=", product_id: "1"},
#   {url: "https://classic.cdn.media.amplience.net/i/hibbett/X1827_0001_right", product_id: "3"},
#   {url: "https://cdn.shoplightspeed.com/shops/603842/files/36501843/650x750x2/image.jpg", product_id: "4"},
#   {url: "https://cdn.shopify.com/s/files/1/2458/4861/products/GreenBayPackersSpeedAuthenticUpgradedDamaged01_1024x.jpg?v=1612813298", product_id: "5"},
#   {url: "https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3850000/altimages/ff_3850635-0ccad7c0388447a1f5c0alt1_full.jpg&w=900", product_id: "6"},
#   {url: "https://www.ccfanstore.com/images/Replica_Kosuke_Fukudome_Youth_Chicago_Cubs_Gray_Road_Jersey-800-1070.jpg", product_id: "7"},
#   {url: "https://www.jcrew.com/s7-img-facade/BA528_RD5643_m?fmt=jpeg&qlt=90,0&resMode=sharp&op_usm=.1,0,0,0&crop=0,0,0,0&wid=850&hei=850", product_id: "8"},
#   {url: "https://i.pinimg.com/originals/78/23/f3/7823f30a4d624060e24256b7c31f5af6.jpg", product_id: "10"},
#   {url: "https://hips.hearstapps.com/ame-prod-goodhousekeeping-assets.s3.amazonaws.com/main/embedded/25836/glass_water.jpg", product_id: "11"},
#   {url: "https://www.gannett-cdn.com/presto/2022/01/12/PMJS/e4bc756c-c7a6-4e51-8d85-2ade4ebc1969-GG_Lay_s_1_Bag_KV_Packers.png?width=300&height=301&fit=crop&format=pjpg&auto=webp", product_id: "13"}
# ])
# Supplier.create!([
#   {name: "Acme Packing Co.", email: "acme@packers.com", phone_number: "920-123-4567"},
#   {name: "Cubs Gear LLC", email: "cubsllc@gmail.com", phone_number: "312-312-4567"},
#   {name: "Flood Brothers", email: "floodbros@gmail.com", phone_number: "630-123-1234"}
# ])
# Product.create!([
#   {name: "Green Bay Packer share", price: "350.0", description: "One share of the best team in the NFL. You too can be an NFL owner", number_in_stock: 1, supplier_id: 1},
#   {name: "Cleats", price: "60.0", description: "Shoes for gripping turf", number_in_stock: 1, supplier_id: 1},
#   {name: "Helmet", price: "250.0", description: "Brain protection", number_in_stock: 1, supplier_id: 1},
#   {name: "Lay's Golden Grounds", price: "125.0", description: "Bag of Lay's potato chips  made from potatoes grown in Lambeau Field soil", number_in_stock: 1, supplier_id: 1},
#   {name: "Brett Favre #4 jersey", price: "39.99", description: "Green Favre #4 Throwback Jersey", number_in_stock: 1, supplier_id: 1},
#   {name: "Glass of water", price: "1.99", description: "Glass of H20, the most tasty thing you can drink after a hard workout. Or on a hot day, other than beer. Trying to write a lot so I can see what txt looks like.", number_in_stock: 1, supplier_id: 2},
#   {name: "Piece of Trash", price: "0.0", description: "Piece of trash I found on the street.", number_in_stock: 1, supplier_id: 3},
#   {name: "Cubs hat", price: "25.0", description: "Hat with the Cubs logo circa 1911.", number_in_stock: 1, supplier_id: 2},
#   {name: "Pink Coat", price: "1000.0", description: "Fluffy, warm coat for cooler temps", number_in_stock: 1, supplier_id: 2},
#   {name: "Cubs Fukodome jersey (gray)", price: "125.0", description: "Fukodome jersey", number_in_stock: 1, supplier_id: 2}
# ])

# pc = ProductCategory.create("product_id": 13, "category_id": 1)
# pc = ProductCategory.create("product_id": 14, "category_id": 1)
# pc = ProductCategory.create("product_id": 4, "category_id": 1)
# pc = ProductCategory.create("product_id": 6, "category_id": 2)
# pc = ProductCategory.create("product_id": 7, "category_id": 2)
# pc = ProductCategory.create("product_id": 3, "category_id": 3)
# pc = ProductCategory.create("product_id": 5, "category_id": 3)
# pc = ProductCategory.create("product_id": 4, "category_id": 3)
# pc = ProductCategory.create("product_id": 6, "category_id": 3)
# pc = ProductCategory.create("product_id": 8, "category_id": 3)
# pc = ProductCategory.create("product_id": 7, "category_id": 3)