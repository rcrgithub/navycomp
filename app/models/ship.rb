class Ship < ApplicationRecord
  belongs_to :shipping_company
  has_many :blmasters

end
