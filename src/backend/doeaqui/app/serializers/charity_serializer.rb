class CharitySerializer
  def call(charity)
    {
      id: charity.id,
      name: charity.name,
      description: charity.description,
      phone: charity.phone,
      location: serialize_location(charity.location)
    }
  end

  def serialize_location(location)
    {
      state: location.state,
      city: location.city,
      street: location.street,
      number: location.number,
      complement: location.complement
    }
  end
end
