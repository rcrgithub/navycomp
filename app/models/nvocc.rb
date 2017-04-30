class Nvocc < ApplicationRecord
  belongs_to :city
  has_many :customers, through: :nvoccs_customers
  has_many :nvoccs_customers
  has_many :shipping_companies, through: :nvoccs_shipping_companies
  has_many :nvoccs_shipping_companies
end
