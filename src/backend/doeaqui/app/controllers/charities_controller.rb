class CharitiesController < ApplicationController
  before_action :set_charity, only: [:show, :update, :destroy]

  def index
    @charities = Charity.all
    render json: {
      charities: @charities
    }
  end

  def show
    render json: @charity
  end

  def create
    @charity = Charity.new(charity_params)
    if @charity.save
      render json: @charity, status: :created, location: @charity
    else
      render json: @charity.errors, status: :unprocessable_entity
    end
  end

  def update
    if @charity.update(charity_params)
      render json: @charity
    else
      render json: @charity.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @charity.destroy
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_charity
      @charity = Charity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def charity_params
      params.require(:charity).permit(:name, :description, :address, :phone)
    end
end
