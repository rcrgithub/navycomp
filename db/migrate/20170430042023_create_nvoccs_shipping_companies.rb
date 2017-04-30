class CreateNvoccsShippingCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :nvoccs_shipping_companies do |t|
      t.references :nvocc, foreign_key: true
      t.references :shipping_company, foreign_key: true

      t.timestamps
    end
  end
end
