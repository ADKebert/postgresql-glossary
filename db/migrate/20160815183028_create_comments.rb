class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.string :author
      t.integer :term_id
      t.timestamps
    end
  end
end
