class List < ApplicationRecord
  NAME = ["S-FICTION", "DRAMA", "ACTION", "COMEDY", "DOCU"]

  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy

  has_many :movies

  validates :title, uniqueness: true, presence: true
end
