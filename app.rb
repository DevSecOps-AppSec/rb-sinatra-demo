require 'sinatra'
require 'erb'
require 'yaml'
get '/hello' do
  name = params[:name]
  ERB.new("Hello #{name}").result
end
post '/load' do
  data = params[:data]
  YAML.load(data)
end
