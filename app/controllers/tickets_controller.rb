class TicketsController < ApplicationController
  protect_from_forgery
  before_action :set_ticket, only: %i[ show edit update destroy ]

  # GET /tickets or /tickets.json
  def index
    @tickets = Ticket.all
    render json:@tickets
  end

  # GET /tickets/1 or /tickets/1.json
  def show
  end

  # GET /tickets/new
  def new
    @ticket = Ticket.new
  end

  # GET /tickets/1/edit
  def edit
  end

  # POST /tickets or /tickets.json
  def create
    ticket = Ticket.new(ticket_params)
    if ticket.save
      render json: { status: 'SUCCESS', data: ticket }
    else
      render json: { status: 'ERROR', data: ticket.errors }
    end
  end

  # PATCH/PUT /tickets/1 or /tickets/1.json
  def update
    if @ticket.update(ticket_params)
      render json: { status: 'SUCCESS', message: 'Updated the ticket', data: @ticket }
    else
      render json: { status: 'SUCCESS', message: 'Not updated', data: @ticket.errors }
    end
  end

  # DELETE /tickets/1 or /tickets/1.json
  def destroy
    @ticket.destroy
    render json: { status: 'SUCCESS', message: 'Deleted the ticket', data: @ticket }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ticket_params
      params.require(:ticket).permit(:plan_id, :name, :switch_name, :number_of_times, :order, :comment)
    end
end
