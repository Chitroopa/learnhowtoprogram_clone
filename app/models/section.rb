class Section < ActiveRecord::Base
  belongs_to :chapter
  has_many :lessons

  validates :heading, :presence => true
end
