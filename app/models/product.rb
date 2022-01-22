class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true, length: { in: 10..500 }
  validates :number_in_stock, presence: true, numericality: true

  belongs_to :supplier
  has_many :images

  def is_discounted?
    discounted = false
    if price < 10
      discounted = true
    end
    return discounted
  end 

  def tax
    tax = price * 0.09
    tax.round(2)
  end

  def total
    price + tax
  end

end
