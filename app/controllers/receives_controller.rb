class ReceivesController < ApplicationController
  before_action :set_receife, only: %i[ show update destroy ]

  # GET /receives
  def index
    @receives = Receive.all

    render json: @receives
  end

  # GET /receives/1
  def show
    render json: @receife
  end

  # POST /receives
  def create
    @receife = Receive.new(receife_params)

    if @receife.save
      render json: @receife, status: :created, location: @receife
    else
      render json: @receife.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /receives/1
  def update
    if @receife.update(receife_params)
      render json: @receife
    else
      render json: @receife.errors, status: :unprocessable_entity
    end
  end

  # DELETE /receives/1
  def destroy
    @receife.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receife
      @receife = Receive.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def receife_params
      params.fetch(:receife, {})
    end
end
