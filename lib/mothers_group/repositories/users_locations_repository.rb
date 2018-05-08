class UsersLocationsRepository < Hanami::Repository
  associations do
    belongs_to :users
    belongs_to :locations
  end
end
