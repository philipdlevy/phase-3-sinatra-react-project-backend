class ChangeColumnDataTypeForBooks < ActiveRecord::Migration[6.1]
  def change
    change_table :books do |t|
      t.change :pages, :integer
    end
  end
end
