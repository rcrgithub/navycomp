class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.references :city, foreign_key: true
      t.string :customer_name
      t.string :ident_card
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
