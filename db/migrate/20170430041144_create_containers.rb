class CreateContainers < ActiveRecord::Migration[5.0]
  def change
    create_table :containers do |t|
      t.references :shipping_company, foreign_key: true
      t.string :container_code
      t.string :container_type
      t.string :city_location
      t.string :country_location
      t.boolean :status_container

      t.timestamps
    end
  end
end
