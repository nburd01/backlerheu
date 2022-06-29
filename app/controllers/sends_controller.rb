class SendsController < ApplicationController
  before_action :set_send, only: %i[ show update destroy ]

  # GET /sends
  def index
    @sends = Send.all

    render json: @sends
  end

  # GET /sends/1
  def show
    render json: @send
  end

  # POST /sends
  def create
    @send = Send.new(send_params)

    if @send.save
      render json: @send, status: :created, location: @send
    else
      render json: @send.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sends/1
  def update
    if @send.update(send_params)
      render json: @send
    else
      render json: @send.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sends/1
  def destroy
    @send.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_send
      @send = Send.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def send_params
      params.fetch(:send, {})
    end
end
