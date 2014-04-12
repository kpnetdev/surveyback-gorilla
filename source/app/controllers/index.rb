enable :sessions
require 'bcrypt'

get '/' do
  # @user = sesssion[:user]
  erb :index
end
