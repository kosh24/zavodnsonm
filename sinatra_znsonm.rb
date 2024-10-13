require 'rubygems'
require 'sinatra'
#require 'sendgrid-ruby'
require 'sinatra/reloader'
#include SendGrid
 require "pony"

get '/' do
  erb :IvyWire
end

post '/email' do
   
	my_mail = 'ivan_smeh2@mail.ru'
	send_to = params[:email]
	password = 'fyDP9KA14eLvu8gdJRNJ'

	

	Pony.mail({
  :subject => params[:subject],
  :body => params[:message],
  :to => send_to,
  :from => my_mail,
  :via => :smtp,
  :via_options => {
    :address => 'smtp.mail.ru',
    :port => '465',
    :tls => true,
    :user_name => my_mail,
    :password => password,
    :authentication => :plain }})
	erb :IvyWire
end




not_found do
  halt 404, 'page not found'
end
