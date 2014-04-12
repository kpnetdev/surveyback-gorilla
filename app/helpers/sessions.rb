helpers do

  def current_user
		if session[:user_id]
	 		User.find(session[:user_id])
	 	else
	 		nil
  		end
	end

	def set_page(new_page)
		session[:page] = new_page
	end

	def current_page?(page)
		session[:page] == page
	end

end