class RemoveFieldSupplierIdFromItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :items, :supplierId, :integer
  end
end
