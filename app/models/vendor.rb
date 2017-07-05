class Vendor < ApplicationRecord
  has_many :fotos      

  def self.search(search)
    if search
      Vendor.where("lower(contact_name) LIKE ? OR lower(company) LIKE ?", "%#{search.downcase}%", "'%#{search.downcase}%'")
    else
      Vendor.all
    end
  end
end
