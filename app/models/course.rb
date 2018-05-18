class Course < ApplicationRecord

  validates :title, uniqueness: true
  validates :title, presence: true

  has_many :lectures



end
