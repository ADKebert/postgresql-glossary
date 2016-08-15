require 'active_record'
require 'pg'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  database: 'tiyglossary_development'
)

ActiveRecord::Base.logger = Logger.new(STDOUT)

class Term < ActiveRecord::Base
  has_many :category_term_relations
  has_many :categories, through: :category_term_relations
  has_many :comments
  has_many :web_links
end

class WebLink < ActiveRecord::Base
  belongs_to :term
end

class Comment < ActiveRecord::Base
  belongs_to :term
end

class Category < ActiveRecord::Base
  has_many :category_term_relations
  has_many :terms, through: :category_term_relations
end

class CategoryTermRelation < ActiveRecord::Base
  belongs_to :term
  belongs_to :category
end
