ENV['RACK_ENV'] = 'test'

require('rspec')
require('pg')
require('pry')
require("sinatra/activerecord")
require('./lib/survey')
require('./lib/question')

  RSpec.configure do |config|
    config.after(:each) do
      Survey.all().each() do |task|
        task.destroy()
      end
    end
  end
