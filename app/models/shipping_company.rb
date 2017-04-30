class ShippingCompany < ApplicationRecord
  belongs_to :city
  has_many :nvoccs, through: :nvoccs_shipping_companies
  has_many :ships
  has_many :containers
end
