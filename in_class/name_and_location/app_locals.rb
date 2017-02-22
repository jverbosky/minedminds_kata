#########################################################################################
# Demo of passing collected post data from one route (ex: /post_name) to another (ex: /post_location)
#########################################################################################
#                                       Overview                                        #
#########################################################################################
# Path for value:
#  get route > view (collect value) > post route (pass value) > view (pass value) > post route
#########################################################################################
# 1) A "get" route uses a view (webpage #1) with a post form to collect a value from a user
# 2) The value is collected in a "post" route and assigned to a local variable
# 3) The local variable is passed to another view (webpage #2) via a view variable
# 4) In the target view (webpage #2), another post form is used to pass the value along
# 5) A different "post" route is then able to access the value collected in step 1
#########################################################################################
#                                        Details                                        #
#########################################################################################
# 1) First, collect a value from a get route (ex: get '/'' do) with
#    a view form (ex: get_name.erb) that uses the post method:
#
#      <form action = "post_name" method = "post">
#        <input type = "text" name = "some_variable">
#        <input type = "submit">
#      </form>
#########################################################################################
# 2) Take the collected value (ex: user_name) and assign it to a
#    local variable in a post route (ex: post '/post_name' do):
#
#      local_variable = params[:some_variable]
#########################################################################################
# 3) In the same post route (ex: post '/post_name' do), pass the
#    local variable (ex: backend_name) to a view variable (ex: name)
#    that will be called in the target view (ex: get_location):
#
#      erb :target_view, :locals => {:view_variable => local_variable}
#
#    Note that this assignment (view_variable = local_variable) is done using hash syntax:
#
#      some_hash = {key => value}
#
#    In the event that there are multiple variables to pass, comma separate each pair:
#
#      some_hash = {key1 => value1, key2 => value2, key3 => value3}
#########################################################################################
# 4) In the target view (ex: get_location), use another view form (ex: get_location.erb)
#    that uses the post method and include an input type with a value of "<%= view_variable %>"
#    and make it hidden (last parameter - might need to make this the type if doesn't work)
#    to pass the view_variable value to the next post route (ex: post '/post_location' do):
#
#      <form action = "post_location" method = "post">
#        <input type = "text" name = "some_other_variable">
#        <input type = "text" name = "some_variable_again" value = <%= view_variable %> hidden>
#        <input type = "submit">
#      </form>
#
#    Note that in this example, form collects *another* value (some_other_variable) in addition
#    to passing the first value collected in the earlier view (ex: get_name.erb)
#
#    Also note that view_variable is accessible in this view - can access it's value directly
#    by calling it (ex: line 1 of get_location.erb):
#
#      The value of local_variable is: <%= view_variable %>
#########################################################################################
# 5) In the next post route (ex: post '/post_location' do), can now access the value using the same
#    statement used in the earlier post route (ex: post '/post_name' do):
#
#      local_variable = params[:some_variable]
#
#    At this point, we could continue passing it to another view or we can simply output
#    the value (ex: post '/post_name' do) using string interpolation:
#
#      "The first value (some_value/local_variable) collected is #{local_variable}."
#
#    Note that the local variable name is not required to use the same name as in the earlier
#    route - using something else will work fine, as there is no relationship with the
#    local variable in the earlier route:
#
#      original_value = params[:some_variable]
#      "The first value collected is #{original_value}."
#########################################################################################

require 'sinatra'
require 'sinatra/reloader' if development?  # automatically reload app.rb on save via sinatra-contrib gem

get '/' do
  erb :get_name
end

post '/post_name' do
  # assign the collected post data from get_name view to local variable (backend_name)
  backend_name = params[:user_name]
  # local variable (backend_name) is passed to get_location view
  # the ":name" variable is what is called in the get_location view (as "name")
  # - in the view, "name" can be called to show it's value (line 1 in get_location view)
  # - to pass the value of "name" from get_location view to /post_location route, use hidden post (line 6 in get_location view)
  erb :get_location, :locals => {:name => backend_name}
end

post '/post_location' do
  # need to call passed local variable to access value in this route
  # variable doesn't have to be the same as what is used in the "passing" route
  backend_name_2 = params[:user_name_again]
  backend_location = params[:user_location]
  # just make sure to use the same variable names consistently in the route
  "Your name is #{backend_name_2} and your location is #{backend_location}."  # now able to access passed value
end

# For ease of implementation:
#
# 1) In get_name.erb, change "post_name" (line 3) and "user_name" (line 4) to "name"
# 2) In get_location.erb, change "post_location" (line 3) and "user_location" (line 4) to "location"
# 3) In get_location.erb, change "user_name_again" to "name" (line 6)
# 4) Replace the previous post routes with these:
#
# post '/name' do
#   name = params[:name]
#   erb :get_location, :locals => {:name => name}
# end

# post '/location' do
#   name = params[:name]
#   location = params[:location]
#   "Your name is #{name} and your location is #{location}."
# end