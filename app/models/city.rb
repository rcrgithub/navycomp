class City < ApplicationRecord
  belongs_to :country
  has_many :shipping_companies
  has_many :nvoccs
  has_many :customers
end
