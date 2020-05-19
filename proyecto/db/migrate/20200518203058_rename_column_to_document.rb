class RenameColumnToDocument < ActiveRecord::Migration[6.0]
  def change
    rename_column :documents, :suppier_id, :supplier_id
  end
end
