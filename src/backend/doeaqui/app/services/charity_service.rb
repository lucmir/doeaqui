class CharityService
  def fetch_charities(state = nil, city = nil, district = nil)
    if state.nil?
      Charity.all
    else
      filters = { state: state }
      filters.merge!({ city: city }) unless city.nil?
      filters.merge!({ district: district }) unless district.nil?
      Charity.includes(:location).where(locations: filters)
    end
  end
end
