class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :body
      t.string :author
      t.text :title
      t.text :postscript
      t.boolean :printed?, default: false
      t.timestamps
    end
  end
end
