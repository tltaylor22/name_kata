user_name = ARGV.first
prompt = '> '

puts "What is your name #{user_name}?"
puts "I'd like to ask you a few questions."
puts "What is your age?"" #{user_name}? "
print prompt
age = $stdin.gets.chomp

puts "What are your three favorite numbers seperated by a comma #{user_name}? "
print prompt
numbers = $stdin.gets.chomp
	numbers.split(",").map { |s| s.to_1 } # splits the string into an array of individual integers
	num_total = numbers.array.inject(0, :+) # adds the integers in the array

puts """
Alright, #{user_name}, so you said your #{age} is.
Your favorite numbers are #{numbers}. They total #{num_total} which is #{greater_or_lesser} than your age.
Wow, you are old.
"""

# def total(num1, num2, num3)
# 	sum = num1 + num2 + num3

# 	puts sum
# end

# total(3,4,5)