class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  
  end

  def create 
   @ticket = Ticket.new(ticket_params)
   if @ticket.save

    redirect_to root_path
  else
    render :new
  end
  end

  def show

  end

  private

  def ticket_params
    params.reqire(:ticket).permit(:program, :venue, :date, :time, :price,:remaining ).merge(user_id: current_user.id)
  end
end
