class ConcertsController < ApplicationController

  def index
    @concerts = Concert.all
    if current_user
      @concerts_fav = Concert.where(music_type: current_user.fav).order(:date).limit(3)
    end
   end

  def show
    @concert = Concert.find(params[:id])
  end

  def order
    @id = params[:id]
    @nb_tickets = params[:nb_tickets].to_i
    @user = current_user
    @concert = Concert.find(@id)

    if (Concert.find(@id).tickets_left >= @nb_tickets.to_i)
      @tickets = []
      for i in 0..@nb_tickets-1
          @ticket = Ticket.new
          @ticket.concert_id = @concert.id
          if @ticket.save
            @user.tickets << @ticket

          end
      end

      @concert.tickets_left -= @nb_tickets
      @concert.save

      if @user.save
        redirect_back_or_to(root_url, success: "Vous avez bien commandé #{@nb_tickets} tickets.")
      end
    else
      redirect_back_or_to(:back, error: "Il ne reste pas assez de ticket.")
    end


  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new(concert_params)
    @concert.tickets_left = params[:concert][:number_places]
    @concert.music_type = params[:music_type]

    if @concert.save #true ou false
      redirect_to root_url
    else
      redirect_to :back
    end
  end

  def destroy
    @concert = Concert.find(params[:id])
    @concert.destroy
    redirect_back_or_to(root_url, success: "Le concert a bien été supprimé.")
  end

  def edit
    @concert = Concert.find(params[:id])
  end

  def update
    @concert = Concert.find(params[:id])
    @concert.update_attributes(concert_params)
    redirect_to action: :order
  end

  private

  def concert_params
    params.require(:concert).permit(:title, :description, :address, :number_places, :date, :cover, :music_type)
  end

end
