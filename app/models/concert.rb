class Concert < ActiveRecord::Base
  has_many :tickets
  validates :title, presence: true
  validates :number_places, presence: true
end
