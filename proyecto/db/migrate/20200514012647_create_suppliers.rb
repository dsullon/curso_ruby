class CreateSuppliers < ActiveRecord::Migration[6.0]
  def change
    create_table :suppliers do |t|
      t.string      :taxt_id
      t.string      :name
      t.string      :address
      t.timestamps
    end
    Supplier.create(:taxt_id=>"20156669885", :name=>"Consultora SAC", :address=>"Jr. Lima")
    Supplier.create(:taxt_id=>"202665502552", :name=>"Juanito SAC", :address=>"Jr. Ica")
    Supplier.create(:taxt_id=>"205879412521", :name=>"Cercado SAC", :address=>"Jr. Lampa")
  end
end
