class Product < ActiveRecord::Base
  belongs_to :product_type
  belongs_to :brand
  belongs_to :quantity_type
end
