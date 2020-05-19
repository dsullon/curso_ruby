class AddStatusToDocument < ActiveRecord::Migration[6.0]
  def change
    add_column  :documents, :status, :integer
  end
end
