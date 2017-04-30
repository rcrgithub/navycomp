class CreateShippingCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :shipping_companies do |t|
      t.references :city, foreign_key: true
      t.string :shipping_comp_name
      t.string :tax_id_vat
      t.string :address
      t.string :phone
      t.string :email
      t.string :website
      t.boolean :status_company

      t.timestamps
    end
  end
end
