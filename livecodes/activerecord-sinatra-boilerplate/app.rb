require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  # restaurants = Restaurant.all
  @restaurants = Restaurant.all
  erb :index
end
# restaurants/5 -> { id: 5}
get "/restaurants/:id" do
  id =  params[:id] # { id: 5}
  @restaurant = Restaurant.find(id)
  erb :show
end