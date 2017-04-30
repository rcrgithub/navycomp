class NvoccsShippingCompany < ApplicationRecord
  belongs_to :nvocc
  belongs_to :shipping_company
  has_many :blmasters


end
