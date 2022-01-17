class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :image_url, :tax, :total, :is_discounted?
end
