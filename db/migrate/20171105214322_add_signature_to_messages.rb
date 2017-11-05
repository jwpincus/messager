class AddSignatureToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :signature, :text
  end
end
