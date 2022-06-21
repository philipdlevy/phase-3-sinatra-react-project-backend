class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author_name
      t.text :description
      t.integer :price
      t.string :pages

      t.integer :author_id

      t.timestamps
    end
  end
end
