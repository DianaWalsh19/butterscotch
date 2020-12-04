class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :productId
      t.string :title
      t.text :description
      t.decimal :price
      t.string :image_url
      t.string :category
      t.string :productType
      t.string :brand
      t.integer :supplierId

      t.timestamps
    end
  end
end
