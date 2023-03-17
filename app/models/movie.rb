class Movie < ApplicationRecord
  has_many :bookmarks

  validates_associated :bookmarks, absence: true
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true
end
