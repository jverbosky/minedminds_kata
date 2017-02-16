# Not quite working - compare with screenshot I took

require 'sinatra'
require 'sinatra/reloader' if development?  # automatically reload app.rb on save via sinatra-contrib gem

get "/" do
  erb :get_name
end

post '/post_name' do
  backend_name = params[:user_name]
  # have to redirect to a get, won't work for post
  # ex URL:  http://localhost:4567/location?name=John
  redirect "/location?name=" + backend_name
end

get '/location' do  # name must match the name used in the redirect (before the "?")
  backend_name_2 = params[:name]  # need to call the passed local variable to access value in this route
  erb :get_location, :locals => {:name => backend_name_2}
end

post '/post_location' do
  backend_location = params[:user_location]
  backend_name = params[:user_name]
  "Your name is #{backend_name} and your location is #{backend_location}."
end