class Inventory < ApplicationRecord
	has_many :photos
	
	def self.search(search)
    if search
      Inventory.where("lower(search_terms) LIKE ? OR lower(product_name) LIKE ? OR upc_code LIKE ? OR status LIKE ? OR sku LIKE ?", "%#{search.downcase}%", "%#{search.downcase}%","%#{search}%", "%#{search.downcase}%", "%#{search.downcase}%")
    else
      Inventory.all
    end
  end
end
