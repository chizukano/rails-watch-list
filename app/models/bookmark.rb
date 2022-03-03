class Bookmark < ApplicationRecord
  has_and_belongs_to_many :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id }
end
