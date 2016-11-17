class ConcertsController < ApplicationController

  def index
    @concerts = Concert.all
   end

  def show
    @concert = Concert.find(params[:id])
    @tikects = @concert.tickets
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Bank.new(concert_params)
    if @concert.save #true ou false
      redirect_to root_url
    else
      redirect_to :back
    end
  end

  private

  def concert_params
    params.require(:concert).permit(:title)
  end

end
