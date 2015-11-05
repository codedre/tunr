require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`

require "pg"
require "active_record"
require "pry"

require_relative "../models/artist"
require_relative "../models/song"

require_relative "../db/connection.rb"


Artist.destroy_all
Song.destroy_all
# destroys existing data in database

robin = Instructor.create(first_name: "Robin", last_name: "Thomas", age: 26)
adam = Instructor.create(first_name: "Adam", last_name: "Bray", age: 30)
robin.students.create(first_name: "Michael", last_name: "Scott", age: 45, job: "Office Manager")
robin.students.create(first_name: "Dwight", last_name: "Schrute", age: 34, job: "Assistant to the Regional Manager")
adam.students.create(first_name: "Dee", last_name: "Reynolds", age: 32, job: "Bartender")
adam.students.create(first_name: "Charlie", last_name: "Kelly", age: 31, job: "Owner of Paddy's")
