enable :sessions
require 'bcrypt'

get '/' do
	@user = current_user
	if @user
		set_page(:logged_in_home_page)
	  erb :index
	else
		erb :login
	end
end
		

get '/surveys/new' do
	set_page(:create_new_survey_page)
	erb :index
end

post '/surveys' do
	survey = Survey.create(name: params[:name], user_id: session[:user_id])
	survey.questions << Question.create(title: params[:title], body: params[:body])

	set_page(:logged_in_home_page)
	erb :index
end

get '/sessions/new' do
  erb :sign_in 
end

post '/sessions' do
	@user = User.find_by_email(params[:email])
	  if @user.password == params[:password]
	    session[:user_id] = @user_id
	   else
	   	nil
	  end
	redirect '/'
end

get '/users/new' do
  erb :sign_up
end

post '/users' do
	@user = User.new(params[:user])
	@user.password = params[:password]
	@user.save
	session[:user_id] = @user_id
	redirect '/'
end

