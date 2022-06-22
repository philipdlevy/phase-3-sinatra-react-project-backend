class DeleteListsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :book_lists
  end
end
