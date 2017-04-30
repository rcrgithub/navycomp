class Container < ApplicationRecord
  belongs_to :shipping_company
  has_and_belongs_to_many :blmasters

end
