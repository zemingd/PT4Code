n = gets.to_i
as = gets.split.map &:to_i

sum = 1

max = 10 ** 18

if as.index(0) then
	puts 0
	exit
end

as.each{ |a|
	sum *= a
	if sum > max then
		puts -1
		exit
	end
}

puts sum
