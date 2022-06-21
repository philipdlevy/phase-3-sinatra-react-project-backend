class ChangeDataTypeForTableBooksPrice < ActiveRecord::Migration[6.1]
  def change
    change_table :books do |t|
      t.change :price, :float
    end
  end
end
