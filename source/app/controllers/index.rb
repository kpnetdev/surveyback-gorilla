get '/' do
  erb :index
end

get '/surveys/new' do
	set_page(:create_new_survey)
	erb :index
end

post '/surveys' do
	Survey.create(name: params[:survey_name])
	Survey.questions << Question.create(params)
	set_page(:logged_in_home_page)
	erb :index
end

def set_page(new_page)
	session[:page] = new_page
end