require "bundler/setup"
require "pg" # postrgres db library
require "active_record" # the ORM
require "pry" # for debugging
require "sinatra"
require "sinatra/reloader"

require_relative "db/connection" # require the db connection file that connects us to PSQL, prior to loading models
require_relative "models/artist" # require the Student class definition that we defined in the models/student.rb file
require_relative "models/song"
# binding.pry
require_relative "controller/artists_controller.rb"

get "/" do
  erb :home
end
