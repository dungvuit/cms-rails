class Category < ApplicationRecord
  has_many :relationships, as: :ownerable
  has_many :posts, through: :relationships,
    source_type: Post.name, source: :targetable
end
