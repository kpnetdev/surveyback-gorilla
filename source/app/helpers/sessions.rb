helpers do

  def current_user
    # TODO: return the current user if there is a user signed in.
    session[:user] || nil
  end
end