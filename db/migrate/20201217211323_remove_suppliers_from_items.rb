class RemoveSuppliersFromItems < ActiveRecord::Migration[5.0]
  def change
    remove_reference :items, :supplier, foreign_key: true
  end
end
