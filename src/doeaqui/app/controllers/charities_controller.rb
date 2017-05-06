class CharitiesController < ApplicationController
  before_action :set_charity, only: [:show]

  def index
    #filter_params = fetch_filter_params
    #charities = service.fetch_charities(filter_params[:state],
    #                                     filter_params[:city],
    #                                     filter_params[:district])
    #render json: {
    #  charities: charities.map { |charity| serializer.call(charity) }
    #}
  end

  def show
    render json: @charity
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

    def set_charity
      @charity = Charity.find(params[:id])
    end
end
