class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :image,                 null:false
      t.integer :money,                null:false
      t.string :name,                  null:false
      t.text :explanation,             null:false
      t.integer :category_id,             null:false  
      t.integer :status_id,               null:false  
      t.integer :deliveryfree_id,         null:false  
      t.integer :shoppingregion_id,       null:false  
      t.integer :deliverytime_id,         null:false  
      t.references :user,              null:false,foreign_kye:true  
      t.timestamps
    end
  end
end
