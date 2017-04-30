class Blmaster < ApplicationRecord
  belongs_to :nvoccs_shipping_company
  belongs_to :ship
  has_and_belongs_to_many :containers
  has_many :blhouses

end
