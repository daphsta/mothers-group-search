class UserRepository < Hanami::Repository
  associations do
    has_many :users_locations
    has_many :locations, through: :users_locations
  end

  def find_by_email(email)
    users.where(email: email).one
  end
end
