class DropTableRowBooksForAuthor < ActiveRecord::Migration[6.1]
  def change
    remove_column :authors, :books
  end
end
