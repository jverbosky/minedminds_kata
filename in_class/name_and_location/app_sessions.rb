require 'sinatra'
require 'sinatra/reloader' if development?  # automatically reload app.rb on save via sinatra-contrib gem

enable :sessions  # required for session variables to pass, has a limit

get "/" do
  erb :get_name
end

post '/post_name' do
  session[:backend_name] = params[:user_name]
  erb :get_location, :locals => {:name => session[:backend_name]}  # name is passed to /get_location
end

post '/post_location' do
  backend_location = params[:user_location]  # no need to call backend_name thanks to session
  "Your name is #{session[:backend_name]} and your location is #{backend_location}."
end