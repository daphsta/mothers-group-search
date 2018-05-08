module Web::Views::Authentication
  def user_signed_in?
    !!current_user
  end
end
