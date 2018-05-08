require 'hanami/interactor'

class CreateUser
  include Hanami::Interactor

  expose :user

  def self.call(user_attributes)
    new(user_attributes).call
  end

  def initialize(user_attributes)
    @user_attributes = user_attributes
  end

  def call
    @user = create_user
    fail
    #set user role
    #create location
  end
  private

  attr_reader :user_attributes



  def create_user
    user = User.new(
      name: user_attributes[:name],
      email: user_attributes[:email],
      password: user_attributes[:password]
    )

    location = Location.new(
      state: user_attributes[:state],
      suburb: user_attributes[:suburb],
      postcode: user_attributes[:postcode]
    )

    repo = UserRepository.new
    repo.create(user)
    # @user = repo.create_with_locations(**user, locations: [location])
  end
end
