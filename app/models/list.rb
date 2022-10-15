class List < ApplicationRecord
  NAME = ["S-FICTION", "DRAMA", "ACTION", "COMEDY", "DOCU"]

  has_many :movies

  validates :title, uniqueness: true, presence: true
end
