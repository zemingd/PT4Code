a,b = gets.split(' ').map(&:to_i)

ave = (a + b) / 2

if ave < 0
	ave = ave.abs
end

puts ave.ceil