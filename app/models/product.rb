class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true, length: { in: 10..500 }
  validates :number_in_stock, presence: true, numericality: true

  belongs_to :supplier
  has_many :images
  has_many :orders

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

  scope :discounted, ->(check_discount) { where("price < ?", 10) if check_discount }

  scope :title_search, ->(name) { where("name ILIKE ?", "%#{name}%") if name } 

  scope :sorted, ->(sort, sort_order) {
    if sort == "price"
      if sort_order == "desc"
        order(price: :desc)
      else 
        order(:price)
      end
    else 
      order(id: :asc)
    end
  }

end
