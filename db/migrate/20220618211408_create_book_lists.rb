class CreateBookLists < ActiveRecord::Migration[6.1]
  def change
    create_table BookLists do |t|
      t.string :title
      
    end
  end
end
