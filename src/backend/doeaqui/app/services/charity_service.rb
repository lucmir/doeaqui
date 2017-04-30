class CharityService
  def fetch_charities(city = nil, district = nil)
    if city.nil? and district.nil?
      Charity.all
    else
      filters = { city: city }
      filters.merge!({ district: district }) unless district.nil?
      Charity.includes(:location).where(locations: filters)
    end
  end
end
