class NvoccsCustomer < ApplicationRecord
  belongs_to :customer
  belongs_to :nvocc
  has_many :blhouses

end
