class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def new
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['BASIC_AUTH_USER'] && password == ENV['BASIC_AUTH_PASSWORD']
    end
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

  def show; end

  private

  def ticket_params
    params.require(:ticket).permit(:program, :text, :venue, :date, :time, :price, :remaining, :image)
  end
end
