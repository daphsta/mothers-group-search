class RoleSeeds
  def seed_database
    role_repo = RoleRepository.new

    %w(admin member guest).each do |role_name|
      role_repo.create(name: role_name)
    end
  end
end
