class CharitiesController < ApplicationController
  before_action :set_charity, only: [:show, :update, :destroy]

  def index
    filter_params = fetch_filter_params
    charities = service.fetch_charities(filter_params[:state],
                                         filter_params[:city],
                                         filter_params[:district])
    render json: {
      charities: charities.map { |charity| serializer.call(charity) }
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

    def fetch_filter_params
      {
        state: params[:state] || nil,
        district: params[:district] || nil,
        city: params[:city] || nil
      }
    end

    def service
      @service ||= CharityService.new
    end

    def serializer
      @serializer ||= CharitySerializer.new
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_charity
      @charity = Charity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def charity_params
      params.require(:charity).permit(:name, :description, :address, :phone)
    end
end
