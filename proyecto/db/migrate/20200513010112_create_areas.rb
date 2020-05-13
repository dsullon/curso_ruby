class CreateAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :areas do |t|
      t.string      :code
      t.string      :name
      t.integer     :level
      t.timestamps
    end
    Area.create(:code => "RCN", :name => "Recepción", :level => 1)
    Area.create(:code => "CNT", :name => "Contabilidad", :level => 2)
    Area.create(:code => "TSR", :name => "Tesorería", :level => 3)
    Area.create(:code => "GRN", :name => "Gerencia", :level => 0)
    Area.create(:code => "SIS", :name => "Sistemas", :level => 0)
    Area.create(:code => "ADM", :name => "Administración", :level => 0)
  end
end
