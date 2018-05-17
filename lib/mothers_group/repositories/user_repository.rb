class UserRepository < Hanami::Repository
  associations do
    has_many :users_locations
    has_many :locations, through: :users_locations
  end

  def find_by_email(email)
    users.where(email: email).one
  end

  def create_with_location(user, location)
    assoc(:users_locations).create(user_id: user.id, location_id: location.id)
  end

  def add_locations(user, locations)
    assoc(:user_locations, user).add(locations)
  end

  def find_with_locations(id)
    aggregate(:locations).where(id: id).map_to(User).one.locations
  end
end
