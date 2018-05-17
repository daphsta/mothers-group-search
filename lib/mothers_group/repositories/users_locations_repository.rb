class UsersLocationsRepository < Hanami::Repository
  associations do
    belongs_to :user
    belongs_to :location
  end
end
