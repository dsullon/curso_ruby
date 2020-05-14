class AddColumnToDocuments < ActiveRecord::Migration[6.0]
  def change
    add_column  :documents, :accepted, :boolean
    add_reference :documents, :area, index:true
    add_reference :documents, :suppier, index:true
    add_reference :documents, :document_type, index:true

    DocumentType.create(:code => "FT", :name => "Factura")
    DocumentType.create(:code => "BV", :name => "Boleta de venta")
    DocumentType.create(:code => "RH", :name => "Recibos por honorarios")
    DocumentType.create(:code => "LT", :name => "Letra de cambio")
  end
end
