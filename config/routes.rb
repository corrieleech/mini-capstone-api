Rails.application.routes.draw do
  get "/store_front", controller: "products", action: "display_all"
end
