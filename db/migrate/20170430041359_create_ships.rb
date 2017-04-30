class CreateShips < ActiveRecord::Migration[5.0]
  def change
    create_table :ships do |t|
      t.references :shipping_company, foreign_key: true
      t.string :ship_name
      t.string :city_location
      t.string :country_location
      t.boolean :status_ship

      t.timestamps
    end
  end
end
