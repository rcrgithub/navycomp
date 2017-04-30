class CreateNvoccsCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :nvoccs_customers do |t|
      t.references :customer, foreign_key: true
      t.references :nvocc, foreign_key: true

      t.timestamps
    end
  end
end
