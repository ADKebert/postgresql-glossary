class CreateWebLinks < ActiveRecord::Migration
  def change
    create_table :web_links do |t|
      t.string :url
      t.string :description
      t.integer :term_id
    end
  end
end
