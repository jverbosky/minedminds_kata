# demo of passing collected post data from one route (/post_name) to another (/post_location)
#
# - passing local variable "backend_name" via:
#     erb :view, :locals => {:view_variable => local_variable}
#
# - in line 13, the variable "backend_name" is only local the the current route

require 'sinatra'
require 'sinatra/reloader' if development?  # automatically reload app.rb on save via sinatra-contrib gem

get "/" do
  erb :get_name
end

post '/post_name' do
  backend_name = params[:user_name]  # assign the collected post data from get_name view to local variable (backend_name)
  erb :get_location, :locals => {:name => backend_name}  # local variable is passed to /get_location view
end

post '/post_location' do
  backend_name = params[:user_name]  # need to restate passed variable to access in this route
  backend_location = params[:user_location]
  "Your name is #{backend_name} and your location is #{backend_location}."  # access passed variable
end