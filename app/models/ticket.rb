class Ticket < ActiveRecord::Base
  belongs_to :concert
  validates :concert_id, presence: true
end
