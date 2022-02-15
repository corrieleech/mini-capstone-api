class CartedProductSerializer < ActiveModel::Serializer
  attributes :id, :subtotal, :tax, :total

  belongs_to :user
end
