require 'sinatra'

get '/' do
	erb :name_input
end

post '/name' do
	backend_name = params[:name_input]
	erb :age_input, :locals => {:username => backend_name}
end

post '/age' do
	backend_name = params[:name_input]
	backend_age = params[:age_input]
	erb :fav_nums, :locals => {:username => backend_name, :age =>backend_age}
end

post '/favorite_numbers' do
	backend_name = params[:name_input]
	backend_age = params[:age_input].to_i
	backend_num1 = params[:fav_num1_input].to_i
	backend_num2 = params[:fav_num2_input].to_i
	backend_num3 = params[:fav_num3_input].to_i
	sum = (backend_num1 + backend_num2 + backend_num3)

	results = 'less than'
		if (sum > backend_age)
			results = 'greater than'
		elsif (sum == backend_age)
			results = 'equal to'
		else
			results
		end
			

	erb :total, :locals => {:username => backend_name, :age => backend_age, :fav1 => backend_num1, :fav2 => backend_num2, :fav3 => backend_num3, :sum => sum, :results => results}

end