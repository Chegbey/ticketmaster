class Ticket < ActiveRecord::Base
  belongs_to :concert
  validates :ticket_id, presence: true
  validates :concert_id, presence: true

end
