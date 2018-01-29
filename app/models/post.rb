class Post < ApplicationRecord
  has_many :relationships, as: :targetable
  has_many :categories, through: :relationships,
    source_type: Category.name, source: :ownerable
end
