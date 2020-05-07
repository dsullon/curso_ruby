class AddCommentsToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :commnents, :text
  end
end
