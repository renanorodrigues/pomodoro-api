class ApprenticeshipsController < ApplicationController
  before_action :set_apprenticeship, only: %i[ show update destroy ]

  # GET /apprenticeships
  def index
    @apprenticeships = Apprenticeship.all

    render json: @apprenticeships
  end

  # GET /apprenticeships/1
  def show
    render json: @apprenticeship
  end

  # POST /apprenticeships
  def create
    @apprenticeship = Apprenticeship.new(apprenticeship_params)

    if @apprenticeship.save
      render json: @apprenticeship, status: :created, location: @apprenticeship
    else
      render json: @apprenticeship.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /apprenticeships/1
  def update
    if @apprenticeship.update(apprenticeship_params)
      render json: @apprenticeship
    else
      render json: @apprenticeship.errors, status: :unprocessable_entity
    end
  end

  # DELETE /apprenticeships/1
  def destroy
    @apprenticeship.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apprenticeship
      @apprenticeship = Apprenticeship.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def apprenticeship_params
      params.require(:apprenticeship).permit(:user_id, :topic_id, :duration, :observation)
    end
end
