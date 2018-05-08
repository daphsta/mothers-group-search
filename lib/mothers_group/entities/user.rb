class User < Hanami::Entity
  def authenticate(attempt_password)
    BCrypt::Password.new(password) == attempt_password
  end
end
