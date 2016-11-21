class Concert < ActiveRecord::Base
  has_many :tickets
  validates :title, presence: true
  validates :number_places, presence: true

  def self.search(search)
  	if search
  		where(["name LIKE ?","%#{search}%"])
  	else
  		all
  end		
end
