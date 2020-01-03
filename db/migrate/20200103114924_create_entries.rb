class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.string :zhname
      t.string :enname
      t.text :interpretation
      t.integer :user_id

      t.timestamps
    end
  end
end
