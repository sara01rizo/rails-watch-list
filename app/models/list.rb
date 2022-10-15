class List < ApplicationRecord
  has_many :movies

  validates :name, uniqueness: true, presence: true
end
