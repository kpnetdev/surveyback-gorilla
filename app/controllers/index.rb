enable :sessions
require 'bcrypt'

get '/' do
	@user = current_user
	if @user
		set_page(:logged_in_home_page)
	  erb :index
	else
		set_page(:login_or_create_account)
		erb :index
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

get '/surveys/:id' do 
	@survey = Survey.find(params[:id])
	set_page(:individual_survey)
	erb :index
end

get '/sessions/new' do
  erb :_sign_in_or_create_account
end

post '/sessions' do #login
	@user = User.find_by_email(params[:user][:email])
	  if @user.password == params[:user][:password]
	    session[:user_id] = @user.id
	  end
	redirect '/'
end

get '/users/new' do
  erb :sign_up
end

post '/users' do #create account
	@user = User.new(email: params[:user][:email], name: params[:user][:name])
	@user.password = params[:user][:password]
	@user.save
	redirect '/'
end

