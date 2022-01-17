class Product < ApplicationRecord
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
