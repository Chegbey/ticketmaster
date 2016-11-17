class TicketmasterController < ApplicationController
  def accueil
    concerts_controller = ConcertsController.new
  end

end
