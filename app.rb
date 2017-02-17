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
	user_age = params[:age_iput]
	user_name =params[:user_name]
	erb :favorite, :locals => {:user_age => user_age, :name =>user_name}
end

Post '/favorite_num' do

end