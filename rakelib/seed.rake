namespace :db do
  desc 'Seeds the database'
  task seed: :environment do
    LocalitySeeds.new.seed_database
    RoleSeeds.new.seed_database
  end
end
