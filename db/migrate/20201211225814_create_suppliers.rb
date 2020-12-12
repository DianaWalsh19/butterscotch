class CreateSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :email
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
