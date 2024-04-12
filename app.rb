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
  erb(:square)
end

get("/square/results") do
  @number = params.fetch("number").to_f
  @square = @number ** 2
  erb(:square_results)
end

get("/square_root/new") do
end

get("/payment/new") do
end

get("/random/new") do
end
