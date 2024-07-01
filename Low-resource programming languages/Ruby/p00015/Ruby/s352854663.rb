time = gets.to_i

time.times do

	num1 = gets.to_i
	num2 = gets.to_i

	if num2 >= 10**79 || num1 >= 10**79 || num1+num2 >= 10**79
		puts "overflow"
	elsif
		puts num1+num2
	end
end