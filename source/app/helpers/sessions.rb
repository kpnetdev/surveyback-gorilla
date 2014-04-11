helpers do

  def current_user
    # TODO: return the current user if there is a user signed in.
    session[:user] || nil
  end

	def set_page(new_page)
		session[:page] = new_page
	end

	def current_page?(page)
		session[:page] == page
	end
	
end