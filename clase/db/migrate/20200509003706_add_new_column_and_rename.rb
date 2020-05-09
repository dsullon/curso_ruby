class AddNewColumnAndRename < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :commnents, :comments
    add_reference :products, :category, index: true
  end
end
