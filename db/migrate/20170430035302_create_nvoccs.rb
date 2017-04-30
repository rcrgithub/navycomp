class CreateNvoccs < ActiveRecord::Migration[5.0]
  def change
    create_table :nvoccs do |t|
      t.references :city, foreign_key: true
      t.string :nvocc_name
      t.string :tax_id_vat
      t.string :address
      t.string :phone
      t.string :email
      t.string :website
      t.boolean :status_nvocc

      t.timestamps
    end
  end
end
