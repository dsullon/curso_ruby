class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string      :number
      t.date        :date
      t.decimal     :total
      t.string      :currency
      t.text        :comments
      t.timestamps
    end
  end
end
