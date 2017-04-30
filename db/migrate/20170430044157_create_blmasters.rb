class CreateBlmasters < ActiveRecord::Migration[5.0]
  def change
    create_table :blmasters do |t|
      t.references :nvoccs_shipping_company, foreign_key: true
      t.references :ship, foreign_key: true
      t.string :container_list
      t.string :goods_origin
      t.string :goods_destiny
      t.date :docking_date
      t.string :origin_destiny_code
      t.date :departure

      t.timestamps
    end
  end
end
