class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show
  end

  def edit
  end

  def update
    if @ticket.update(item_params)
      redirect_to ticket_path

    else
      render :edit
    end
  end


    def destroy
      if @ticket.destroy
      redirect_to root_path

      else
        render :show
    end
  end

  def new
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['BASIC_AUTH_USER'] && password == ENV['BASIC_AUTH_PASSWORD']
    end
    @ticket = Ticket.new
    @tickets = Ticket.all
  end

  def create
    @ticket = Ticket.new(ticket_params)
    if @ticket.save
      redirect_to root_path
    else
      render :new
    end
  end

  

  private

  def ticket_params
    params.require(:ticket).permit(:program, :text, :venue, :date, :time, :price, :remaining, :image)
  end
end
