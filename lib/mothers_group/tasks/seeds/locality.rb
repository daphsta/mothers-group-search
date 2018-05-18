require 'csv'

class LocalitySeeds
  def seed_database
    file = Hanami.root.to_s + '/data/' + 'au_postal_codes.csv'
    CSV.foreach(file, { headers: true, header_converters: :symbol }) do |row|
      location = Location.new(
        state: row[:state_abbreviation],
        postcode: row[:postal_code],
        suburb: row[:place_name],
        longtitude: row[:longtitude],
        latitude: row[:latitude]
      )

      location_repo = LocationRepository.new
      new_location = location_repo.create(location.to_h)
      puts "Created location #{new_location.state}, #{new_location.postcode}, #{new_location.suburb}"
    end
  end
end
