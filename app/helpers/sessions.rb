helpers do

  def current_user
    # TODO: return the current user if there is a user signed in.
		if session[:user_id]
	 		User.find(session[:user_id])
  		end
	end

	def set_page(new_page)
		session[:page] = new_page
	end

	def current_page?(page)
		session[:page] == page
	end
	
end