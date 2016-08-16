require 'active_record'
require 'pg'

if ENV["DATABASE_URL"]
  # Production
  ActiveRecord::Base.establish_connection(ENV["DATABASE_URL"])
else
  # Development
  ActiveRecord::Base.establish_connection(
    adapter: 'postgresql',
    database: 'tiyglossary_development'
  )

ActiveRecord::Base.logger = Logger.new(STDOUT)

class Term < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
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
  validates :name, :subject_area , presence: true
  validates :name, uniqueness: true
  has_many :category_term_relations
  has_many :terms, through: :category_term_relations
end

class CategoryTermRelation < ActiveRecord::Base
  belongs_to :term
  belongs_to :category
end
