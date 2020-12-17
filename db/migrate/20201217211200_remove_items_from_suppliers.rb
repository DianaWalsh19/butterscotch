class RemoveItemsFromSuppliers < ActiveRecord::Migration[5.0]
  def change
    remove_reference :suppliers, :items, foreign_key: true
  end
end
