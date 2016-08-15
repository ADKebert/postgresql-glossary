class CreateCategoryTermRelations < ActiveRecord::Migration
  def change
    create_table :category_term_relations do |t|
      t.integer :category_id
      t.integer :term_id
    end
  end
end
