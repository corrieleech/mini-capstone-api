Rails.application.routes.draw do
  get "/store_front", controller: "products", action: "display_all"
  get "/first_product", controller: "products", action: "display_first"
  get "/newest_product", controller: "products", action: "display_last"
  get "/any_product", controller: "products", action: "any_product"
  
end
