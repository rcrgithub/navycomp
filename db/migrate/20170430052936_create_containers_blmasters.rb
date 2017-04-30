class CreateContainersBlmasters < ActiveRecord::Migration[5.0]
  def change
    create_table :containers_blmasters do |t|
      t.references :container, foreign_key: true
      t.references :blmaster, foreign_key: true
    end
  end
end
