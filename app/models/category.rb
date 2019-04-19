class Category < ActiveRecord::Base

  has_many :products

  # def products
  #   Product.where(category_id: id)
  # end
end
