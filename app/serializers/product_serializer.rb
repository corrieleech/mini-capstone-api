class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :number_in_stock, :image_url, :tax, :total, :is_discounted?
end
