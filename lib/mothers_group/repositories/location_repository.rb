class LocationRepository < Hanami::Repository
  associations do
    has_many :users_locations
    has_many :users, through: :users_locations
  end

  def find_by_postcode(postcode)
    locations.where(postcode: postcode).one
  end

  def find_with_users(id)
    aggregate(:users).where(id: id).map_to(Location).one.users
  end
end
