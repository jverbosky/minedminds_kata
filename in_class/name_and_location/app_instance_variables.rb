# just copied from app_locals, need to redo using instance variables

require 'sinatra'

get "/" do
  erb :get_name
end

post '/post_name' do
  backend_name = params[:user_name]
  erb :get_location, :locals => {:name => backend_name}  # name is passed to /get_location
end

post '/post_location' do
  backend_location = params[:user_location]
  backend_name = params[:user_name]
  "Your name is #{backend_name} and your location is #{backend_location}."
end