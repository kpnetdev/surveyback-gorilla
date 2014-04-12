enable :sessions
require 'bcrypt'

get '/' do
	set_page(:logged_in_home_page)
  erb :index
end

get '/surveys/new' do
	set_page(:create_new_survey_page)
	erb :index
end

get '/surveys/:id' do
	@survey = Survey.find(params[:id])
	set_page(:individual_survey)
	erb :index
end

post '/surveys' do
	survey = Survey.create(name: params[:name], user_id: session[:user_id])
	survey.questions << Question.create(title: params[:title], body: params[:body])

	set_page(:logged_in_home_page)
	erb :index
end

