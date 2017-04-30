class CreateBlhouses < ActiveRecord::Migration[5.0]
  def change
    create_table :blhouses do |t|
      t.references :nvoccs_customer, foreign_key: true
      t.references :blmaster, foreign_key: true

      t.timestamps
    end
  end
end
