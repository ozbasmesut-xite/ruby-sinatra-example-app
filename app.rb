require 'rubygems'
require 'bundler/setup'

# myapp.rb
require 'sinatra'
require 'json'

set :bind, '0.0.0.0'

get '/' do
  output = "Hello world! Version 1."
  output
end

get "/google" do
  require "httparty"
  HTTParty.get('http://google.com', follow_redirects: true).body
end
