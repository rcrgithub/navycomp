class Customer < ApplicationRecord
  belongs_to :city
  has_many :nvoccs, through: :nvoccs_customers
  has_many :nvoccs_customers

end
