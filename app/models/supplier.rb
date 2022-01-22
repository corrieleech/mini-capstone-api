class Supplier < ApplicationRecord
  validates :name, uniqueness: true
  validates :email, uniqueness: true
  validates :phone_number, uniqueness: true

  has_many :products
  
end
