require 'rubygems'
require 'sinatra'
#require 'sendgrid-ruby'
#require 'sinatra/reloader'
#include SendGrid

get '/' do
  erb :IvyWire
end


not_found do
  halt 404, 'page not found'
end
