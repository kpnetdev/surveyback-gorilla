enable :sessions

require 'bcrypt'

get '/' do
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




get '/sessions/new' do
	erb :sign_in
end




get '/users/new' do
  erb :sign_up
end

post '/users' do
	@user = User.create(params[:user])
	@user.password = params[:password]
	p params[:password]
	session[:user] = @user
	redirect '/'
end




















