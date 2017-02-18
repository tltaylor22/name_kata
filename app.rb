require 'sinatra'
# require_relative 'name.rb'

get '/' do
	erb :name

end

post '/name' do
	user_name = params[:name_input]
	erb :age, :locals => {:user_name => user_name}
end

post '/age' do
	user_age = params[:age_input]
	user_name = params[:user_name]
	erb :favorite, :locals => {:age_input => user_age, :user_name =>user_name}
end

post '/number' do
	numbers = params[:favorite_input]
	user_age = params[:user_age]
	user_name = params[:user_name]
	erb :math, :locals => {:favorite_input => numbers, :user_age => user_age, :user_name => user_name}
end