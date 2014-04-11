get '/surveys/new' do
	set_page(:create_new_survey_page)
	erb :index
end

post '/surveys' do
	survey = Survey.create(name: params[:survey_name], user_id: session[:user_id])
	survey.questions << Question.create(params)
	survey.save

	set_page(:logged_in_home_page)
	erb :index
end