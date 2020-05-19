class CreateDocumentLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :document_logs do |t|
      t.references   :document
      t.references   :user
      t.references   :area
      t.text        :comments
      t.timestamps
    end
  end
end
