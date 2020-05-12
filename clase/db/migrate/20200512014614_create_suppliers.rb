class CreateSuppliers < ActiveRecord::Migration[6.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :tax_id
      t.string :address

      t.timestamps
    end
  end
end
