class GroupRepository < Hanami::Repository
  associations do
    has_many :users, through: :users_groups
  end
end
