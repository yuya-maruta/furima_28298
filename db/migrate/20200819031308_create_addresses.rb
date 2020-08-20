class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :postalcode
      t.integer :prefectures
      t.string :city
      t.string :address
      t.string :buildingname
      t.string :phone_number
      t.references :purchase
      t.timestamps
    end
  end
end
