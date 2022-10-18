class Bookmark < ApplicationRecord
  belongs_to :movie_id
  belongs_to :list_id

  validates :movie_id
end
