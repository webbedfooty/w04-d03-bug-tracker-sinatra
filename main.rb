require "sinatra"
require "sinatra/activerecord"
require "sinatra/reloader"
require "pry"
require_relative "lib/insect.rb"
require_relative "lib/researcher.rb"
require_relative "lib/paper.rb"
require_relative "lib/location.rb"

get '/' do
  binding.pry
end

#### INSECTS

# Index
get '/insects' do
  @insects = Insect.all
  erb :insects_index
end

# New
get '/insects/new' do
  @insect = Insect.new
  erb :insects_new
end

# Create
post '/insects' do
  # create insect object
  @insect = Insect.new(params)

  if @insect.save
    redirect to('/insects')
  else
    erb :insects_new
  end
end

# Show
get '/insects/:id' do
  @insect = Insect.find_by_id(params['id']) # nil or Insect object
  erb :insects_show
end

