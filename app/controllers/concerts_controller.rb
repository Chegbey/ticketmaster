class ConcertsController < ApplicationController

  def index
    @concerts = Concert.all
    #@concerts = Concert.search(params[:search])
   end

  def show
    @concert = Concert.find(params[:id])
    @tikects = @concert.tickets
  end

  def order
    @id = params[:id]
    @nb_tickets = params[:nb_tickets].to_i
    @user = current_user

    if (Concert.find(@id).tickets_left >= @nb_tickets.to_i)
      @tickets = []
      for i in 0..@nb_tickets-1
          @ticket = Ticket.new
          @ticket.concert_id = params[:id]
          if @ticket.save
            puts '----------'
            puts @ticket
            puts '----------'
            puts @user.id
            puts '----------'
            @user.tickets << @ticket
          end
      end

      if @user.save
        redirect_to root_url, :notice => "Vous avez bien commandé #{@nb_tickets} tickets"
      end
    else
      redirect_to :back, :notice => "Il ne reste pas assez de ticket"
    end
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new(concert_params)
    @concert.tickets_left = params[:concert][:number_places]
    if @concert.save #true ou false
      redirect_to root_url
    else
      redirect_to :back
    end
  end

  private

  def concert_params
    params.require(:concert).permit(:title, :description, :address, :number_places, :date )
  end

end
