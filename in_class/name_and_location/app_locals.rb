#########################################################################################
# Demo of passing collected post data from one route (ex: /post_name) to another (ex: /post_location)
#########################################################################################
#                                       Overview                                        #
#########################################################################################
# 1) A "get" route uses a view (webpage #1) with a post form to collect a value from a user
# 2) The value is collected in a "post" route and assigned to a local variable
# 3) The local variable is passed to another view (webpage #2) via a view variable
# 4) In the target view (webpage #2), another post form is used to pass the value along
# 5) A different "post" route is then able to access the value collected in step 1
#########################################################################################
#                                        Details                                        #
#########################################################################################
# 1) First, collect a value from a get route (ex: get "/" do) with
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
#    to pass the view_variable value to the next post route (ex: post /post_location do):
#
#      <form action = "post_location" method = "post">
#        <input type = "text" name = "some_other_variable">
#        <input type = "text" name = "some_variable" value = <%= view_variable %> hidden>
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
# 5) In the next post route (ex: post /post_location do), can now access the value using the same
#    statement used in the earlier post route (ex: post /post_name do):
#
#      local_variable = params[:some_variable]
#
#    At this point, we could continue passing it to another view or we can simply output
#    the value (ex: post /post_name do) using string interpolation:
#
#      "The first value (some_value/local_variable) collected is #{local_variable}."
#########################################################################################

require 'sinatra'
require 'sinatra/reloader' if development?  # automatically reload app.rb on save via sinatra-contrib gem

get "/" do
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
  backend_name = params[:user_name]  # need to call passed local variable to access value in this route
  backend_location = params[:user_location]
  "Your name is #{backend_name} and your location is #{backend_location}."  # now able to access passed value
end