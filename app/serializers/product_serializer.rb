class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :number_in_stock, :tax, :total, :is_discounted?

  belongs_to :supplier
  has_many :images
  
end
