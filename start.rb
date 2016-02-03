require 'sinatra'
require_relative 'model/hacksocevent'
get '/' do
  'Hello world!'
end

get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params['name'] is 'foo' or 'bar'
  "Hello #{params['name']}!"
end

get '/template' do 

code = "<%= Time.now %>"
  erb code
end

get '/api/hacksoc' do 

	h = HacksocEvent.new
	json = h.api

	json
end
