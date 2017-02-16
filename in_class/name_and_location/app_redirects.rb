# Not quite working - compare with screenshot I took

require 'sinatra'
require 'sinatra/reloader' if development?  # automatically reload app.rb on save via sinatra-contrib gem

get "/" do
  erb :get_name
end

post '/post_name' do
  backend_name = params[:user_name]
  redirect "/get_location?name=" + backend_name  # have to redirect to a get, won't work for post
end

get '/post_location' do
  backend_name = params[:name]
  erb :get_location, :locals => {:name => backend_name}
end

post '/post_location' do
  backend_location = params[:user_location]
  backend_name = params[:user_name]
  "Your name is #{backend_name} and your location is #{backend_location}."
end