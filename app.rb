require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
  erb(:home)
end

get("/square/new") do
  erb(:square_new)
end

get("/square/results") do
  @number = params.fetch("number").to_f
  @square = @number ** 2
  erb(:square_results)
end

get("/square_root/new") do
  erb(:square_root_new)
end

get("/square_root/results") do
  @number = params.fetch("number").to_f
  @square_root = @number ** 0.5
  erb(:square_root_results)
end

get("/payment/new") do
end

get("/payment/results") do
end

get("/random/new") do
end

get("/random/results") do
end
