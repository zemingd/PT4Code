a = gets.split(' ').map(&:to_i)

sum = a.inject(:+)

if sum < 22
	puts 'win'
else
	puts 'bust'
end
