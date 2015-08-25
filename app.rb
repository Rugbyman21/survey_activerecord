require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
also_reload('./lib/**/*.rb')
require('./lib/survey')
require('./lib/question')
require('pg')

# get("/") do
#   @survey = Survey.all()
#   erb(:index)
# end
